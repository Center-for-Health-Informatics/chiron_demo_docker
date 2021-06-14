
# HOW TO GENERATE NEW IMAGE
# 1. create a directory with repositories chiron, chiron_demo, and chiron_demo_docker
# 2. from directory root run the following:
#    docker build -f chiron_demo_docker/dockerfiles/chiron_demo/Dockerfile -t jmeinken/chiron-demo .
#    docker push jmeinken/chiron-demo



FROM python:3.8.5-alpine

RUN pip install --upgrade pip
RUN pip install gunicorn

RUN apk update && apk add python3-dev \
                        gcc \
                        libc-dev

COPY ./chiron_demo /app
COPY ./chiron/chiron /app/chiron
COPY ./chiron/requirements.txt .

RUN pip install -r requirements.txt

WORKDIR /app

COPY ./chiron_demo_docker/dockerfiles/chiron_demo/entrypoint.sh .
ENTRYPOINT ["sh", "entrypoint.sh"]