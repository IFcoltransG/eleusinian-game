FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git

COPY game.shar .
RUN chmod +x ./game.shar
RUN bash ./game.shar

WORKDIR 'USB Flash Drive'
CMD ["bash"]
