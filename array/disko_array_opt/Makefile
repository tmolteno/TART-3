all:
	python3 array_opt.py --iter=10000 --fov=160 --arcmin=180 --radius=2.5 --learning-rate=0.05

.PHONY: test

test:
	python3 -m pytest .

install:
	sudo aptitude install python3-numpy python3-scipy
	sudo pip3 install disko --upgrade
	sudo pip3 install tensorflow --upgrade
