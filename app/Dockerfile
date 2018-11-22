# pull official base image
FROM python:3.6-alpine

# set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /usr/src/app

# install psycopg2
RUN apk update \
    && apk add gcc python3-dev musl-dev \
    && apk add postgresql-dev \
    && apk add graphviz graphviz-dev

# copy project
COPY . /usr/src/app/

# install dependencies
RUN pip install --upgrade pip
RUN pip install pipenv
# using latest pipenv Python package manager
# to produce deterministic builds
# https://pipenv.readthedocs.io/en/latest/
RUN pipenv install --dev

# run entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]