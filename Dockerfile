FROM ubuntu:xenial

MAINTAINER jpeet

RUN apt-get update \
    && apt install -y libgroove-dev \
                      zlib1g-dev \
                      libpng-dev \
                      git-core \
                      build-essential \
                      make \
    && git clone https://github.com/andrewrk/waveform.git \
    && cd waveform \
    && make

#ENTRYPOINT ["waveform/waveform"]
#CMD ["--help"]


