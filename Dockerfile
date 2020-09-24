FROM python:3.8.5-buster

WORKDIR /tmp
COPY requirements.txt .

RUN pip install --upgrade pip --no-cache-dir && \
    pip install -r requirements.txt --no-cache-dir && \
    rm -rf * && \
    mkdir /tmp/app

WORKDIR /tmp/app
COPY ./project .