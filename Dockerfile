FROM python:2.7.9

ENV PYTHONBUFFERED 1
ENV APPLICATION_ROOT /app/

RUN apt-get update
RUN pip install --upgrade pip
RUN pip install Django==1.10.1 uWSGI==2.0.13.1

RUN mkdir -p $APPLICATION_ROOT
WORKDIR $APPLICATION_ROOT
ADD . $APPLICATION_ROOT
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["uwsgi", "--ini", "twitter_clone/twitter_clone/twitter_clone.ini"]
