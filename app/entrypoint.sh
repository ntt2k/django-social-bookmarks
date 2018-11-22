#!/bin/sh

echo "Waiting for postgres..."
while ! nc -z $SQL_HOST $SQL_PORT; do
    sleep 0.1
done
echo "PostgreSQL started"

pipenv run python manage.py migrate
# automatic generate the current app models visualization
pipenv run python manage.py graph_models -a -g -o app_models_visualized.svg

pipenv run python manage.py collectstatic --no-input

# run security check report
pipenv check > security_report.log

exec "$@"