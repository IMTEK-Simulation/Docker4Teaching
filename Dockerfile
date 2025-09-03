FROM jupyter/base-notebook:latest

LABEL org.opencontainers.image.source=https://github.com/IMTEK-Simulation/Docker4Teaching

USER root

# Install basic scientific packages first
RUN conda install -c conda-forge --yes \
    numpy \
    pandas \
    matplotlib \
    scipy \
    && conda clean -afy

# Install machine learning and visualization packages
RUN conda install -c conda-forge --yes \
    scikit-learn \
    pyvista \
    && conda clean -afy

# Install FeniCS and related packages
RUN conda install -c conda-forge --yes \
    fenics-dolfinx \
    python-gmsh \
    && conda clean -afy

# Install Jupyter and utility packages
RUN conda install -c conda-forge --yes \
    jupytext \
    jupyterlab \
    patsy \
    pip \
    && conda clean -afy

WORKDIR /home/jovyan/work

USER $NB_UID

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token=''"]
