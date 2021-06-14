#!/bin/sh

rm db.sqlite3

python manage.py restore_demo_project_state --settings=project.settings_docker
python manage.py collectstatic --no-input --settings=project.settings_docker

gunicorn project.wsgi_docker:application --bind 0.0.0.0:8000