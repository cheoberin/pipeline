FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /app

WORKDIR /app

COPY . /app

CMD ["python3", "app.py"]
