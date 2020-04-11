FROM python:2.7-buster

RUN mkdir -p /home/wxRobot

COPY / /home/wxRobot

RUN cd /home/wxRobot && \
    pip install -r requirements.txt && \
    python robsSrv.py
