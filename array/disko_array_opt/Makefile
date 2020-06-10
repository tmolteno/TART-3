all:
	python3 array_opt.py --iter=10000 --fov=160 --arcmin=180 --radius=2.5 --learning-rate=0.05

.PHONY: test

test:
	python3 -m pytest .

graph:
	rm -rf logs/func
	python3 display_graph.py
	tensorboard --logdir logs/func

OPTIMIZER=RMSprop
comparison:
	python3 array_opt.py --iter=10000 --fov=160 --arcmin=180 --radius=2.5 --learning-rate=0.02 --optimizer ${OPTIMIZER} --outfile ${OPTIMIZER}

run_all:
# 	make comparison OPTIMIZER=RMSprop
	make comparison OPTIMIZER=Adam
	make comparison OPTIMIZER=Nadam
	make comparison OPTIMIZER=Adamax
	make comparison OPTIMIZER=Adagrad

install:
	sudo aptitude install python3-numpy python3-scipy
	sudo pip3 install disko --upgrade
	sudo pip3 install tensorflow --upgrade
