FROM ubuntu:latest
MAINTAINER Andrey Shprengel ashprengel@gmail.com
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev && \
    pip3 install --upgrade pip setuptools
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
ENTRYPOINT ["python3"]
CMD ["app.py"]