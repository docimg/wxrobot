FROM python:2.7-slim

RUN mkdir -p /home/wxRobot

COPY / /home/wxRobot

RUN cd /home/wxRobot && \
    pip install -r requirements.txt

EXPOSE 8081

CMD ["python","robsSrv.py",">server.log"]