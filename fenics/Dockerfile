FROM quay.io/jupyter/datascience-notebook:hub-5.2.1

LABEL org.opencontainers.image.source=https://github.com/IMTEK-Simulation/Docker4Teaching

USER root
RUN apt-get update

# See https://fenicsproject.org/download/ (conda did not work due to an parsing issue of a version wildcard)
RUN mamba install -c conda-forge --yes \
  fenics-dolfinx \
  mpich \
  pyvista

# system deps for GL / GLFW / GLES / GLU / Xft
RUN apt-get update && apt-get install -y --no-install-recommends \
  libglfw3-dev \
  libgles2-mesa-dev \
  libglu1-mesa \
  libxft2 \
  && rm -rf /var/lib/apt/lists/*

USER jovyan
RUN pip install "pyvista[all]" trame-jupyter-extension
RUN pip install vtk
RUN pip install gmsh

WORKDIR /home/jovyan/work

#EXPOSE 8888
#CMD ["start-notebook.sh", "--NotebookApp.token=''"]
