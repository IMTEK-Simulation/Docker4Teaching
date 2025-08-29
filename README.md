# Docker4Teching

Docker Container build
======================

@Franz, bitte den Text anpassen

* Build your own image and run it

 ```bash
  docker build -t simulation . 
 ```
 The build process can take some time, but if finished you can run your container with:
 ```bash
  docker run -p 7777:8888 -i -t simulation
 ```
 and you will have a running [Jupyter Notebook](http://jupyter.org) instance on ``http://localhost:7777/ipython/``.

* Run a pre-build image from docker registry

 ``docker run -p 7777:8888 quay.io/galaxy/docker-jupyter-notebook:25.04 ``  

Usage
=====
