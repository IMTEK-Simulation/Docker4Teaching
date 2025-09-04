FROM jupyter/base-notebook:latest

LABEL org.opencontainers.image.source=https://github.com/IMTEK-Simulation/Docker4Teching

USER root

RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    scikit-learn \
    jupyterlab

USER $NB_UID
WORKDIR /home/jovyan/work

EXPOSE 8888
CMD ["start-notebook.sh", "--NotebookApp.token=''"]
