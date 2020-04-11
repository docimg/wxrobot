FROM python:2.7

WORKDIR /home/wxRobot

COPY / ./

RUN pip install -r requirements.txt

EXPOSE 8081
CMD [ "python", "robsSrv.py" ]