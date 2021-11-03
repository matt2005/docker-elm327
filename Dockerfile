FROM alpine

RUN apk --update add file

LABEL maintainer "Matt Hilton <matthilton2005@gmail.com>"

RUN apk add --no-cache python3 \
    libusb \
    openssl \
    libc-dev \
    ca-certificates \
    python3-dev \
	python3-pip \
    && update-ca-certificates

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install git+https://github.com/ircama/ELM327-emulator
RUN python3 -m pip install --upgrade git+https://github.com/brendan-w/python-OBD.git
