FROM quay.io/jupyter/datascience-notebook:hub-5.2.1

LABEL org.opencontainers.image.source=https://github.com/IMTEK-Simulation/Docker4Teaching

USER root
RUN apt-get update

# See https://fenicsproject.org/download/ (conda did not work due to an parsing issue of a version wildcard)
RUN mamba install -c conda-forge --yes \
fenics-dolfinx \
mpich \
pyvista

RUN apt update && apt install -y libglfw3-dev libgles2-mesa-dev

USER jovyan
RUN pip install pyvista[all] trame-jupyter-extension
RUN pip install vtk
RUN pip install gmsh

WORKDIR /home/jovyan/work

#EXPOSE 8888
#CMD ["start-notebook.sh", "--NotebookApp.token=''"]
