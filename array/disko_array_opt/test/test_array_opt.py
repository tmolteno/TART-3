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
        array_opt.init(radius_lower=radius_min, 
                    spacing = spacing,
                    radius_limit=radius, ant=cls.ant)


                    
    def test_dict_loadsave(self):
        x_opt = np.random.uniform(0, 2.5, 24)
        score, penalty = array_opt.global_f(x_opt)
        
        ret = {}
        array_opt.array_to_dict(ret, x_opt)
        
        x2 = array_opt.dict_to_array(ret)
        score1, penalty1 = array_opt.global_f(x2)
        
        self.assertAlmostEqual(penalty, penalty1)
        self.assertAlmostEqual(score, score1)
        
    def test_json_loadsave(self):
        x_opt = np.random.uniform(0, 2.5, 24)
        score, penalty = array_opt.global_f(x_opt)
        
        self.ant.to_json(filename='test', x=x_opt, penalty=penalty.numpy(), score=score.numpy())
        
        ant2 = array_opt.YAntennaArray.from_json('test.json')
        self.assertAlmostEqual(score.numpy(), ant2.condition_number)
        self.assertAlmostEqual(penalty.numpy(), ant2.penalty)

        score2, penalty2 = array_opt.global_f(ant2.x)
        self.assertAlmostEqual(penalty.numpy(), penalty2.numpy())
        self.assertAlmostEqual(score.numpy(), score2.numpy())
