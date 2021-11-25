FROM ubuntu:latest

COPY game.shar .
RUN chmod +x ./game.shar
RUN bash ./game.shar

CMD ["bash"]
