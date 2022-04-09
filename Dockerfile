FROM python:3-alpine

LABEL MAINTAINER="Andrius Kozeniauskas"
LABEL NAME=solismod

RUN mkdir /solismod
COPY *.py *.txt /solismod/

WORKDIR /solismod

RUN pip install --upgrade pip \
  && pip3 install -r requirements.txt

CMD [ "python", "./main.py" ]