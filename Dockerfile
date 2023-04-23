FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y && \
    apt-get install -y git python3 python3-pip

COPY . /app
WORKDIR /app

EXPOSE 80
CMD ["python3", "app.py"]
