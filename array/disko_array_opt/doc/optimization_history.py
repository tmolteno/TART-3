import json
from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np

paths = sorted(Path('..').rglob('*_lr*_history.json'))
for path in paths:
    print(path.name)
    with open(path, 'r') as f:
        data = json.load(f)

    print(data.keys())
    
    lr = data['learning_rate']
    optimizer = data['optimizer']
    y = np.array(data['cond'])
    
    label = "{} {}".format(optimizer, lr)
    
    if (optimizer == "RMSprop"):
        marker = '.'
    elif (optimizer == "Nadam"):
        marker = 'd'
    elif (optimizer == "Adam"):
        marker = 'v'
    elif (optimizer == "Adamax"):
        marker = '^'
    else:
        marker = '.'
    if True:
        plt.semilogy(y, marker, label=label)
        plt.ylabel('log(cond(A))')
    else:
        plt.plot(y, marker, label=label)
        plt.ylabel('cond(A)')
        plt.ylim((0,100))
   
plt.legend()
plt.xlabel('Iteration')
plt.grid()
plt.savefig('optimization_history.pdf')
plt.show()
