FROM python:3.10.14-slim

ENV PYTHONBUFFERED 1
ENV APPLICATION_ROOT /app/

RUN apt-get update \
    && apt-get -y install libpq-dev gcc
RUN pip install --upgrade pip
RUN pip install asgiref==3.8.1 \
                django==5.0.3 \
                psycopg2==2.9.9 \
                sqlparse==0.4.4 \
                typing-extensions==4.10.0 \
                tzdata==2024.1 \
                uwsgi==2.0.24

RUN mkdir -p $APPLICATION_ROOT
WORKDIR $APPLICATION_ROOT
ADD . $APPLICATION_ROOT
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["uwsgi", "--ini", "twitter_clone/twitter_clone/twitter_clone.ini"]
