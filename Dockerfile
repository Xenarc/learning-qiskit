FROM jupyter/scipy-notebook:70178b8e48d7

LABEL maintainer="Mark Blashki <markblashki1@gmail.com>"

# Install from requirements.txt file

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/

RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"


ADD ./notebook /home/jovyan/work

ENV JUPYTER_ENABLE_LAB=yes
