import disko
import logging
import argparse
import json

import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf

#    Use the SVD of the telescope operator to evaluate the performance of an all-sky array
#    layout
#



def polar_to_rectangular(r, theta):
    '''
        Rectangular coordinates are with the y axis aligned with north-south
        and the x axis pointing east
    '''
    x = r * np.sin(theta)
    y = r * np.cos(theta)
    z = np.zeros_like(x)
    
    return x,y,z


def init(radius_lower, ant):
    '''
        Define the globals needed by our minimization function
    '''
    global l, m, n_minus_1, p2j, theta, pixel_areas, radius, radius_min, min_spacing
    
    l = tf.constant(ant.fov.l)
    m = tf.constant(ant.fov.m)
    n_minus_1 = tf.constant(ant.fov.n_minus_1)
    
    freq = 1.57542e9
    C = 2.99793e8
    

    num_ant = 24
    num_arms = 3
    radius = tf.constant(ant.radius, dtype=tf.float64)
    min_spacing = tf.constant(ant.spacing, dtype=tf.float64)
    radius_min = tf.constant(radius_lower, dtype=tf.float64)
    
    p2j = tf.constant(2.0*np.pi*1.0j * freq / C)

    arm_angles = [0,np.radians(120),np.radians(240)]
    theta = tf.constant(np.array([[a,]*8 for a in arm_angles]).flatten())

    n_s = l.shape[0]
    pixel_areas = tf.constant(1.0 / np.sqrt(n_s), dtype=tf.complex128)
    return  l, m, n_minus_1, p2j, theta, pixel_areas, radius, radius_min, min_spacing

def constrain(x, lower, upper):
    sharpness = 5
    clip_lower = tf.math.softplus((x-lower)*sharpness)/sharpness + lower
    return upper - tf.math.softplus((-clip_lower + upper)*sharpness)/sharpness

def penalize(duv2, limit=0.2):
    sharpness = 50
    duv = tf.sqrt(duv2)
    clip_lower = tf.math.softplus((limit - duv)*sharpness)/sharpness
    return 50*(clip_lower/limit)**2


@tf.function
def global_f(_x, _y, _z, l, m, n_minus_1, p2j, pixel_areas, min_spacing):
    '''
        A function suitable for optimizing using a global minimizer. This will
        return the condition number of the telescope operator, as well as an array
        penalty if the antennas are close to each other.
        
        The input is a vector or radial positions
    '''
    
    num_ant = _x.shape[0]
    
    rows = []
    penalty = 1
    for i in range(num_ant):
        for j in range(i+1, num_ant):
            u = _x[i] - _x[j]
            v = _y[i] - _y[j]
            w = _z[i] - _z[j]
            
            duv = (u**2 + v**2 + w**2)
            penalty += penalize(duv, min_spacing)
            
            exponent = -p2j*tf.cast(u*l + v*m + w*n_minus_1, tf.complex128)
            h = tf.exp(exponent) * pixel_areas
            rows.append(h)
    
    gamma = tf.stack(rows, axis=0)

    s = tf.linalg.svd(gamma, full_matrices=False, compute_uv=False)
    
    # Von Neumann Entropy of the Moore-Penrose inverse
    # If A=U\Sigma V^{*} is the singular value decomposition of A, 
    # then A^{+}=V\Sigma ^{+}U^{*}
    # where \SIgma^+ is formed by the inverse of the singular values.
    entropy = -tf.math.reduce_sum(tf.math.log(s) * tf.math.reciprocal(s))
    cond = (s[0] / s[275])
    return penalty, entropy, cond

def get_ant_pos(x):
    global theta, radius, radius_min
    x_constrained = constrain(x, lower=radius_min, upper=radius)

    _x = x_constrained * tf.sin(theta)
    _y = x_constrained * tf.cos(theta)
    _z = tf.zeros_like(x)
    return _x, _y, _z

def combine_score(p, e, c):
    ''' Combine the penalty, entropy and condition number into the final score.
       
        Parameters: 
            p: penalty
            e: entropy
            c: condition number
            
        Returns:
            The combined optimization criterion.
    '''
    return p + e

#Function without input to be used for the minimizer. The variable is called x_opt
def tf_minimize_function():
    global l, m, n_minus_1, p2j, theta, pixel_areas, radius, radius_min, min_spacing

    global penalty, entropy, cond

    if False:
        tf.debugging.check_numerics(x_opt, message="x is buggered")
        
    _x, _y, _z = get_ant_pos(x_opt)
    
    penalty, entropy, cond = global_f(_x, _y, _z, l, m, n_minus_1, p2j, pixel_areas, min_spacing)
    return combine_score(penalty, entropy, cond)



def sort_arms(arms):
    arm0, arm120, arm240 = arms
    arm0 = np.sort(arm0)
    arm120 = np.sort(arm120)
    arm240 = np.sort(arm240)
    return arm0, arm120, arm240

def array_to_dict(ret, x_constrained, x_opt):
    arms = np.split(x_constrained, 3)
    arm0, arm120, arm240 = sort_arms(arms)

    ret['arm0'] = arm0.tolist()
    ret['arm120'] = arm120.tolist()
    ret['arm240'] = arm240.tolist()
    
    ret['x_opt'] = x_opt.tolist()
    
def dict_to_array(ret):
    return np.array(ret['x_opt'])
    


class YAntennaArray:
    '''
        Antenna array consists of three arms called arm0, arm120 and arm240.
        Each arm has N antennas. In the case of the tart, it will be N=8
        
    '''
    def __init__(self, N, radius, radius_min, res_arcmin, fov_degrees, spacing):
        self.N = N
        self.radius = radius
        self.radius_min = radius_min
        self.spacing = spacing
        self.frequency = 1.57542e9
        self.fov_degrees = fov_degrees
        self.res_arcmin = res_arcmin
        
        self.fov = disko.HealpixSubSphere.from_resolution(resolution=res_arcmin, 
                                      theta = np.radians(0.0), phi=0.0, 
                                      radius=np.radians(fov_degrees/2))
        self.fig = None
        
    def init_plot(self):
        self.fig = plt.figure(figsize=(8,4))
        self.ax1 = self.fig.add_subplot(1,2,1, adjustable='box', aspect=1)
        self.ax2 = self.fig.add_subplot(1,2,2, adjustable='box', aspect=1)

        #self.fig, (self.ax1, self.ax2) = plt.subplots(1, 2)
        #self.fig.suptitle('Optimizer Outpu')

    @classmethod
    def from_json(cls, filename):
        with open(filename, 'r') as f:
            data = json.load(f)
            
        cls = YAntennaArray(data['N'], 
                            data['radius'],
                            data['radius_min'],
                            data['res_arcmin'],
                            data['fov_degrees'],
                            data['spacing'])
        cls.arms = np.array([data['arm0'], data['arm120'], data['arm240']])
        cls.condition_number = data['condition_number']
        cls.penalty = data['penalty']
        cls.x = dict_to_array(data)
        return cls

    def to_json(self, filename, x_constrained, x_opt, penalty, entropy, cond):
        ret = {}
        ret['condition_number'] = cond
        ret['entropy'] = entropy
        ret['penalty'] = penalty
        ret['N'] = x_opt.shape[0]
        ret['radius'] = self.radius
        ret['radius_min'] = self.radius_min
        ret['spacing'] = self.spacing
        ret['frequency'] = self.frequency
        ret['fov_degrees'] = self.fov_degrees
        ret['res_arcmin'] = self.res_arcmin
        ret['npix'] = self.fov.npix

        array_to_dict(ret, x_constrained, x_opt)
        
        #arm0, arm120, arm240 = sort_arms(arms)

        #ret['arm0'] = arm0.tolist()
        #ret['arm120'] = arm120.tolist()
        #ret['arm240'] = arm240.tolist()

        fname = filename + '.json'
        with open(fname, 'w') as outfile:
            json.dump(ret, outfile, sort_keys=True, indent=4)

    def get_score(self, arms):
        # Create telescope operator
        
        dsko = self.get_disko(arms)
        
        gamma = dsko.make_gamma(self.fov)
        print("gamma shape {}".format(gamma.shape))
        s = tf.linalg.svd(gamma, full_matrices=False, compute_uv=False)

        score =  s[0] / s[275]
        return score

    def get_ant_pos(self, arms):
        arm0, arm120, arm240 = arms
        x0,y0,z0 = polar_to_rectangular(r=arm0, theta=0)
        x120,y120,z120 = polar_to_rectangular(r=arm120, theta=np.radians(120))
        x240,y240,z240 = polar_to_rectangular(r=arm240, theta=np.radians(240))
        x = np.hstack((x0, x120, x240,))
        y = np.hstack((y0, y120, y240,))
        z = np.hstack((z0, z120, z240,))
        
        ant_pos = np.array([x,y,z]).T
        return ant_pos

    def get_disko(self, arms):
        frequencies = [self.frequency]
        
        ant_pos = self.get_ant_pos(arms)
                
        array_disko = disko.DiSkO.from_ant_pos(ant_pos, frequencies[0])
        return array_disko

    
    def get_arms(self, x):
        return np.split(x,3)
        
    def plot_uv(self, filename, x, penalty, entropy, cond):
        if self.fig is None:
            self.init_plot()
        
        arms = self.get_arms(x)
        self.ax1.clear()
        self.ax1.set_aspect('equal', adjustable='box')
        dsko = self.get_disko(arms)
        self.ax1.set_title("U-V S={:.3g}, C={:.3g}".format(entropy, cond))
        self.ax1.plot(dsko.u_arr, dsko.v_arr, '.')
        self.ax1.plot(-dsko.u_arr, -dsko.v_arr, '.')
        self.ax1.grid(True)
        
        ant_pos = self.get_ant_pos(arms)

        self.ax2.clear()
        self.ax2.set_aspect('equal', adjustable='box')
        self.ax2.set_title("Array layout. penalty={:.3g}".format(penalty))
        self.ax2.plot(ant_pos[:,0], ant_pos[:,1], 'x')
        self.ax2.grid(True)
        # circles with colors from default color cycle
        for a in ant_pos:
            self.ax2.add_patch(plt.Circle([a[0], a[1]], radius=self.spacing/2, color='black'))
        self.fig.savefig(filename + '.pdf')
        
        plt.pause(0.1)
        
            
            
    
    def print(self, x):
        
        arms = self.get_arms(x)
        arm0, arm120, arm240 = sort_arms(arms)

        arm0 = np.array2string(arm0, formatter={'float_kind':lambda x: "%.3f" % x})
        arm120 = np.array2string(arm120, formatter={'float_kind':lambda x: "%.3f" % x})
        arm240 = np.array2string(arm240, formatter={'float_kind':lambda x: "%.3f" % x})

        print("     Arm 0: {}".format(arm0))
        print("   Arm 120: {}".format(arm120))
        print("   Arm 240: {}".format(arm240))

        
        
def run_optimization(radius, radius_min, N, arcmin, 
                    fov, spacing, initial, 
                    learning_rate, iterations, 
                    optimizer, outfile):
    global x_opt, penalty, entropy, cond
    best_score = 1e49
    
    ant = YAntennaArray(N=8, 
                        radius=radius, 
                        radius_min=radius_min, 
                        res_arcmin=arcmin,
                        fov_degrees=fov,
                        spacing=spacing)
    
    # Set up global variables for the tf function
    init(radius_min, ant)
    
    history = {}
    history['cond'] = []
    history['entropy'] = []
    history['penalty'] = []
    history['score'] = []
    history['optimizer'] = optimizer
    history['learning_rate'] = learning_rate

    if initial is not None:
        with open(initial, 'r') as f:
            data = json.load(f)
            
        x_initial = dict_to_array(data)
        x_opt = tf.Variable(x_initial, dtype=tf.float64)        
    else:
    
        x_opt = tf.Variable(tf.random_uniform_initializer(minval=radius_min, 
                        maxval=radius)(shape=(24,),
                        dtype=tf.float64))

    if optimizer == 'RMSprop':
        opt = tf.keras.optimizers.RMSprop(learning_rate=learning_rate)
    elif optimizer == 'Adam':
        opt = tf.keras.optimizers.Adam(learning_rate=learning_rate)
    elif optimizer == 'Nadam':
        opt = tf.keras.optimizers.Nadam(learning_rate=learning_rate)
    elif optimizer == 'Adamax':
        opt = tf.keras.optimizers.Adamax(learning_rate=learning_rate)
    elif optimizer == 'Adagrad':
        opt = tf.keras.optimizers.Adagrad(learning_rate=learning_rate)
    else:
        raise RuntimeError('Unknown optimizer {}'.format(optimizer))

    for i in range(iterations):
        opt.minimize(tf_minimize_function, var_list=[x_opt])
        # penalty, cond are stored in global variables to avoid recalculating 
        # them using:
        #     _x, _y, _z = get_ant_pos(x_opt)
        #     penalty, cond = global_f(_x, _y, _z)
        penalty = penalty.numpy()
        entropy = entropy.numpy()
        cond = cond.numpy()
        
        y = combine_score(penalty, entropy, cond)
        
        history['cond'].append(cond)
        history['entropy'].append(entropy)
        history['penalty'].append(penalty)
        history['score'].append(y)
        
        print("{:04.1f} cond: {:6.4g}, e={:04.1f}, pen: {:6.4g}, score: {:6.4g}".format(100.0*i/iterations, cond, entropy, penalty, y))
        #print (opt.get_gradients(y, [x_opt]))
        if (y < best_score):
            x_constrained = constrain(x_opt, radius_min, radius).numpy()
            ant.print(x_constrained)
            ant.plot_uv(outfile, x_constrained, penalty, entropy, cond)
            ant.to_json(outfile, x_constrained, x_opt.numpy(), penalty, entropy, cond)
            best_score = y
                
        with open(outfile + '_history.json', 'w') as f:
            json.dump(history, f, sort_keys=True, indent=4)
                
# 
#     if False:
#         for i in range(ARGS.iterations):
#             arm0 = np.random.uniform(0, radius, 8)
#             arm120 = np.random.uniform(0, radius, 8)
#             arm240 = np.random.uniform(0, radius, 8)
#             arms = [arm0, arm120, arm240]
#             
#             cond = ant.get_score(arms)
#             x = np.array(arms).flatten()
#             score2 = global_f(x)
#             print(score, score2)
#             
#             if (score < best_score):
#                 print("Iteration {} New best score {}".format(i, score))
#                 ant.print(arm0, arm120, arm240)
#                 best_score = score
#                 ant.plot_uv(ARGS.outfile, arms, score)
#         
#         print("Best score: {}".format(best_score))
#         ant.print(arm0, arm120, arm240)

if __name__=="__main__":
    
    parser = argparse.ArgumentParser(description='DiSkO Array: Optimize an array layout using the singular values of the array operator', 
                                    formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('--iter', type=int, default=100, help="Number of iterations.")
    parser.add_argument('--nant', type=int, default=8, help="Number of antennas per arm.")
    parser.add_argument('--narm', type=int, default=3, help="Number of arms.")

    parser.add_argument('--arcmin', type=float, default=120, help="Resolution of the sky in arc minutes.")
    parser.add_argument('--radius', type=float, default=2.0, help="Length of each arm in meters.")
    parser.add_argument('--radius-min', type=float, default=0.1, help="Minimum antenna position along each arm in meters.")
    parser.add_argument('--spacing', type=float, default=0.15, help="Minimum antenna spacing.")

    parser.add_argument('--fov', type=float, default=180.0, help="Field of view in degrees")
    #parser.add_argument('--trace', action=store_true, help="Use the trace of the singular values as the optimization criterion")
    
    parser.add_argument('--initial', required=False, default=None, help="Start the optimization from the positions specified in the JSON file")

    parser.add_argument('--optimizer', required=False, default="RMSprop", help="Use the specified optimzer. Available are 'Adam', RMSprop, Nadam")

    parser.add_argument('--outfile', required=False, default="optimized_array", help="Write the optimization results to the specified JSON file")

    parser.add_argument('--learning-rate', type=float, default=0.02, help="Optimizer learning rate.")

    ARGS = parser.parse_args()





    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s %(name)-12s %(levelname)-8s %(message)s',
                        datefmt='%m-%d %H:%M',
                        filename='array_opt.log',
                        filemode='w')
    # define a Handler which writes INFO messages or higher to the sys.stderr
    console = logging.StreamHandler()
    console.setLevel(logging.INFO)
    formatter = logging.Formatter('%(name)-12s: %(levelname)-8s %(message)s')
    console.setFormatter(formatter)
    
    # add the handler to the root logger
    logger = logging.getLogger()
    logger.addHandler(console)


    run_optimization(radius = ARGS.radius,
        radius_min = ARGS.radius_min,
        N = ARGS.nant,
        arcmin = ARGS.arcmin, fov=ARGS.fov, spacing=ARGS.spacing,
        initial = ARGS.initial, learning_rate = ARGS.learning_rate,
        iterations = ARGS.iter, optimizer=ARGS.optimizer,
        outfile = ARGS.outfile)
    
