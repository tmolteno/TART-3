OPTS=--fov 160 --radius-min 0.1 --radius 2.5 --arcmin 180

all:
	python3 array_opt.py --iter=10000 ${OPTS} --learning-rate=0.1

.PHONY: test

test:
	python3 -m pytest .

graph:
	rm -rf logs/func
	python3 display_graph.py
	tensorboard --logdir logs/func

OPTIMIZER=RMSprop
LEARNING=0.1
comparison:
	python3 array_opt.py --iter=10000 ${OPTS} --learning-rate=${LEARNING} --optimizer ${OPTIMIZER} --outfile ${OPTIMIZER}_lr${LEARNING}

run_all:
	make comparison OPTIMIZER=RMSprop
	make comparison OPTIMIZER=Adam
	make comparison OPTIMIZER=Nadam
	make comparison OPTIMIZER=Adamax
	make comparison OPTIMIZER=Adagrad

install:
	sudo aptitude install python3-numpy python3-scipy
	sudo pip3 install disko --upgrade
	sudo pip3 install tensorflow --upgrade

#SUPER_IN=RMSprop_lr0.1.json
SUPER_IN=super_out.json
super:
	cp ${SUPER_IN} loop_in.json 
	for i in 1 2 3 4 ; do \
		echo "Loop $$i:"; \
		python3 array_opt.py --iter=1500 --optimizer RMSprop --learning-rate 0.005 ${OPTS} --initial loop_in.json --outfile super_step_1; \
		python3 array_opt.py --iter=1500 --optimizer Adam --learning-rate 0.001 ${OPTS} --initial super_step_1.json --outfile loop_in; \
	done
	cp loop_in.json super_out.json

