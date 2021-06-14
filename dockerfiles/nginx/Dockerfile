
# How to generate a new image
# 1. clone this repository and navingate to directory dockerfiles/nginx
# 2. run the following:
#    docker build -t jmeinken/nginx-for-django .
#    docker push jmeinken/nginx-for-django

FROM nginx:1.19.0-alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf