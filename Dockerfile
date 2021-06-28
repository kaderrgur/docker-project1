FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install --no-install-recommends -y python3.8 python3-pip python3.8-dev

COPY requirements.txt /usr/src/app/
COPY app.py /usr/src/app/

RUN pip3 install -r /usr/src/app/requirements.txt

CMD ["python3","/usr/src/app/app.py"]


