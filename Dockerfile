FROM ubuntu:impish
RUN apt-get update
RUN apt-get install npm -y
RUN apt-get install curl -y
RUN node --version
RUN npm --version
RUN sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"
RUN dfx --version
