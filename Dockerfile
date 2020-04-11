FROM python:2.7-slim

RUN mkdir -p /home/wxRobot

COPY / /home/wxRobot

RUN cd /home/wxRobot && \
    apt install python-pip && \
    pip install --trusted-host pypi.python.org -r requirements.txt

WORKDIR /home/wxRobot

EXPOSE 8081

CMD ["python","robsSrv.py"]