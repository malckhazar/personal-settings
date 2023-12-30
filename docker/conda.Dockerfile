FROM fedora:39

ARG CONDA_VERSION=2023.09-0

RUN dnf -y update

RUN dnf -y install bzip2 curl
RUN curl -O https://repo.anaconda.com/archive/Anaconda3-$CONDA_VERSION-Linux-x86_64.sh
RUN chmod a+x Anaconda3-$CONDA_VERSION-Linux-x86_64.sh
RUN ./Anaconda3-$CONDA_VERSION-Linux-x86_64.sh -b -f -p /
RUN source ~/.bashrc

RUN conda update conda
#RUN conda update anaconda
RUN conda update --all

#CMD "/bin/bash"
