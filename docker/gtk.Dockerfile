FROM fedora:39

WORKDIR ~

RUN dnf update -y

RUN dnf install -y bzip2 curl vim git tmux
RUN dnf install -y gtk4 gtk4-devel gtk4-devel-docs
RUN git clone --recurse-submodules https://github.com/malckhazar/personal-settings.git
RUN cp -f personal-settings/.terminal.rc ~/
RUN echo "source ~/.terminal.rc" >> ~/.bashrc
RUN source ~/.bashrc

CMD "/bin/bash"
