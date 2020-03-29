FROM armhf/debian

RUN apt-get update \
    && apt-get -y install python3 \
    python3-pyqt5 \
    python3-pip \
    python3-dev

RUN mkdir /app
WORKDIR /app

ADD . /app

CMD [ "python3", "./main.py" ]