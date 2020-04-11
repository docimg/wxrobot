FROM python:2.7-buster

RUN mkdir -p /home/wxRobot

COPY / /home/wxRobot

RUN cd /home/wxRobot && \
    pip install -r requirements.txt

CMD python /home/wxRobot/robsSrv.py start > /home/wxRobot/server.log & && tail -F /dev/null