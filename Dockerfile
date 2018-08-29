FROM ubuntu:latest
MAINTAINER Angello Maggio "angellom@jfrog.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /flask-site
WORKDIR /flask-site
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
