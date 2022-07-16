FROM ubuntu:impish

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install npm -y
RUN apt-get install curl -y
RUN apt-get install rsync -y
RUN sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"

RUN dfx --version
RUN node --version
RUN npm --version

RUN mkdir -p /root/icp-test
WORKDIR /root/icp-test
RUN dfx new hello
WORKDIR /root/icp-test/hello
RUN npm set timeout=1200000
RUN npm cache clean --force

CMD ["/bin/bash"]
