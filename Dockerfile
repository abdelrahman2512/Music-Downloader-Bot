# © Cyril C Thomas
# https://t.me/cyril_c_10

FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir bot.py
WORKDIR bot.py

COPY . ./

RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3-pip -y
RUN apt-get install ffmpeg -y
RUN pip3 install -r requirements.txt

CMD ["python3", "bot.py"]
