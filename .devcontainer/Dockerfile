FROM mcr.microsoft.com/devcontainers/miniconda:0-3

# Copy environment.yml (if found) to a temp location so we update the environment. Also
# copy "noop.txt" so the COPY instruction does not fail if no environment.yml exists.
COPY environment.yml* .devcontainer/noop.txt .devcontainer/conda_init.txt /tmp/conda-tmp/
RUN apt-get update; \
    apt-get -yq install vim
RUN conda install mamba -c conda-forge -y; \
    mamba install jupyterlab jupyterlab-git -c conda-forge -y; \
    if [ -f "/tmp/conda-tmp/environment.yml" ]; then umask 0002 && mamba env update -n base -f /tmp/conda-tmp/environment.yml; fi \
    && cat /tmp/conda-tmp/conda_init.txt >> /home/vscode/.bashrc \
    && rm -rf /tmp/conda-tmp
