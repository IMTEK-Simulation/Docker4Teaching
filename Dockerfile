FROM jupyter/base-notebook:latest

LABEL org.opencontainers.image.source=https://github.com/IMTEK-Simulation/Docker4Teching

USER root

# install system dependencies here
# RUN apt-get update && apt-get install -y build-essential git

RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    scikit-learn \
    jupyterlab

# Set workdir and revert to non-root user used by jupyter images
WORKDIR /home/jovyan/work
USER $NB_UID

# Expose notebook port and default command (image already has a start script)
EXPOSE 8888
CMD ["start-notebook.sh", "--NotebookApp.token=''"]
