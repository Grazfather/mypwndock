FROM grazfather/pwndock:latest

# GEF
RUN cd ~/tools \
    && git clone --depth 1 https://github.com/hugsy/gef.git \
    && echo "source ~/tools/gef/gef.py" > ~/.gdbinit

# Install dotfiles
RUN cd ~/tools \
    && git clone --depth 1 https://github.com/Grazfather/dotfiles.git \
    && bash ~/tools/dotfiles/init.sh

RUN echo 'export PS1="[\[\e[34m\]\u\[\e[0m\]@\[\e[33m\]\H\[\e[0m\]:\w]\$ "' >> /root/.bashrc

# work env
WORKDIR /root/code
