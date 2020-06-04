import unittest
import array_opt
import numpy as np

class TestArrayOpt(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        # Load data from a JSON file
        radius = 2.5
        arcmin = 180
        fov = 160
        spacing = 0.15
        
        cls.ant = array_opt.YAntennaArray(N=8, radius=radius, 
                            res_arcmin=arcmin,
                            fov_degrees=fov,
                            spacing=spacing)
        radius_min = 0.1
        array_opt.init(radius_lower=radius_min, ant=cls.ant)


                    
    def test_dict_loadsave(self):
        x_opt = np.random.uniform(0, 2.5, 24)
        penalty, cond = array_opt.global_f(x_opt)
        
        ret = {}
        array_opt.array_to_dict(ret, x_opt, x_opt)
        
        x2 = array_opt.dict_to_array(ret)
        penalty1, cond1 = array_opt.global_f(x2)
        
        self.assertAlmostEqual(penalty, penalty1)
        self.assertAlmostEqual(cond.numpy(), cond1.numpy())
        
    def test_json_loadsave(self):
        x_opt = np.random.uniform(0, 2.5, 24)
        penalty, cond = array_opt.global_f(x_opt)
        
        self.ant.to_json(filename='test', x_constrained=x_opt,
                        x_opt=x_opt, penalty=penalty.numpy(), cond=cond.numpy())
        
        ant2 = array_opt.YAntennaArray.from_json('test.json')

        # Now recompute the penalty and condition number from the saved array
        penalty2, cond2 = array_opt.global_f(ant2.x)
        self.assertTrue(np.allclose(x_opt, ant2.x))
        
        self.assertAlmostEqual(penalty.numpy(), penalty2.numpy())
        self.assertAlmostEqual(cond.numpy(), cond2.numpy())

#     def test_
