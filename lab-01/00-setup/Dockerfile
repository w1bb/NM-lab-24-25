ARG BASE_CONTAINER=quay.io/jupyter/minimal-notebook:latest
FROM $BASE_CONTAINER

# Install octave
USER root
ENV DEBIAN_FRONTEND=noninteractive
ENV NOTEBOOK_ARGS=" --IdentityProvider.token=''"
RUN apt-get update && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends octave \
    && apt update && apt install -yq gnuplot-qt fonts-freefont-otf ghostscript \
    && rm -rf /var/lib/apt/lists/*

# Install extra packages
USER $NB_UID
ENV NOTEBOOK_ARGS=" --IdentityProvider.token=''"
RUN conda install --quiet --yes 'octave_kernel' \
    && conda clean -tipy \
    && fix-permissions $CONDA_DIR \
    && fix-permissions /home/$NB_USER

USER $NB_UID
