FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install sharutils
RUN apt-get -y install gnupg

COPY game.shar .
RUN chmod +x ./game.shar
RUN bash ./game.shar

WORKDIR 'USB Flash Drive'
CMD ["bash"]
