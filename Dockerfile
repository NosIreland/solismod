FROM python:3-alpine

LABEL MAINTAINER="Andrius Kozeniauskas"
LABEL NAME=solismod

RUN mkdir /solismod \
  && mkdir /solismod/pysolarmanv5
COPY *.py *.txt /solismod/
COPY pysolarmanv5/* /solismod/pysolarmanv5/
COPY config/* /solismod/config/

WORKDIR /solismod

RUN pip install --upgrade pip \
  && pip3 install -r requirements.txt

CMD [ "python", "./main.py" ]