FROM alpine

RUN apk --update add file

LABEL maintainer "Matt Hilton <matthilton2005@gmail.com>"

RUN apk add --no-cache python3 \
    libusb \
    openssl \
    libc-dev \
    ca-certificates \
    python3-dev \
    && update-ca-certificates

RUN pip3 install --upgrade pip
RUN pip3 install git+https://github.com/ircama/ELM327-emulator
RUN pip3 install --upgrade git+https://github.com/brendan-w/python-OBD.git
