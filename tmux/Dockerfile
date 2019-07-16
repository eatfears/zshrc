FROM ubuntu:18.04

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update && \
    apt-get -y install git sudo bison \
    automake \
    build-essential \
    pkg-config \
    libevent-dev \
    libncurses5-dev && \
    apt-get purge -y && \
    apt-get autoremove -y && \
    rm -r /var/lib/apt/lists/*

RUN useradd --create-home \
            --home-dir /home/user \
            --shell /bin/bash \
            user; \
    usermod -u 1001 user; \
    groupmod -g 1001 user; \
    chown 1001:1001 /home/user; \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers; \
    echo "root:1123" | chpasswd

RUN echo "cp /home/user/tmux/tmux   /home/user/share/ && exit 0" > /start.sh && \
    chmod a+rwx /start.sh

USER user
WORKDIR /home/user
RUN mkdir -p ./tmux && \
    mkdir -p ./share && \
    git clone https://github.com/tmux/tmux.git   ./tmux && \
    cd ./tmux && \
    git checkout master && \
    ./autogen.sh && \
    ./configure && make

# CMD ["/bin/bash"]
ENTRYPOINT [ "/bin/bash", "/start.sh" ]
