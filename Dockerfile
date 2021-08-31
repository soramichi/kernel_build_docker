FROM debian:bookworm
MAINTAINER Soramichi Akiyama <akiyama@m.soramichi.jp>

RUN apt-get update && \
    apt-get install -y gcc make build-essential flex bison bc rsync kmod cpio libssl-dev libelf-dev git python3 && \
    git clone https://github.com/soramichi/kernel_build/ /root/kernel_build

ADD setting.json /root/kernel_build/setting.json

CMD ["/usr/bin/python3", "/root/kernel_build/run_build.py", "/root/kernel_build/setting.json"]
