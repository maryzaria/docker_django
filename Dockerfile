FROM python:3.10-alpine3.16

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /src/requirements.txt

RUN pip install -r /src/requirements.txt

COPY . /src

RUN python /src/manage.py migrate

EXPOSE 8000

WORKDIR /src

CMD python manage.py runserver 0.0.0.0:8000
