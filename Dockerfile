FROM jupyter/base-notebook:latest

LABEL org.opencontainers.image.source=https://github.com/IMTEK-Simulation/Docker4Teaching

USER root

# Install mamba for faster package resolution
RUN conda install -c conda-forge mamba --yes

# Use mamba instead of conda for better memory usage
RUN mamba install -c conda-forge --yes \
    numpy \
    pandas \
    matplotlib \
    scipy \
    scikit-learn \
    fenics-dolfinx \
    pyvista \
    python-gmsh \
    jupytext \
    jupyterlab \
    patsy \
    pip \
    && conda clean -afy

WORKDIR /home/jovyan/work

USER $NB_UID

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token=''"]
