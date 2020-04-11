FROM python:3.7.7-buster

COPY / /tmp

RUN cd /tmp && \
    pip install -r requirements.txt

