FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git sharutils gnupg gcc libncurses5-dev libncursesw5-dev

COPY game.shar .
RUN bash ./game.shar

WORKDIR 'USB Flash Drive'
CMD ["bash"]
