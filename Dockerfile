FROM python:3.11
ENV PYTHONUNBUFFERED=1
WORKDIR /code
RUN apt-get update && apt-get install -y binutils libproj-dev curl build-essential
COPY requirements.txt /code/
RUN pip install -r requirements.txt
# RUN apt-get install -y nginx
COPY . /code/
#EXPOSE 8000
#COPY ./docker-entrypoint.sh /
#ENTRYPOINT ["./docker-entrypoint.sh"]

# https://docs.docker.com/compose/django/
# https://pythonspeed.com/articles/schema-migrations-server-startup/
# https://semaphoreci.com/community/tutorials/dockerizing-a-python-django-web-application
