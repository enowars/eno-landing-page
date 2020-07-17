FROM python:alpine3.8

RUN apk add --no-cache postgresql-dev gcc musl-dev \
    jpeg-dev zlib-dev freetype-dev \
    python3-dev libffi-dev

RUN pip install --upgrade pip
RUN pip install requests==2.23.0 flask Flask-Mail psycopg2 Pillow apache-libcloud cryptography hcloud desec-dns-api gunicorn[eventlet]

WORKDIR /app
EXPOSE 8000


RUN addgroup -S gunicorn && adduser -S gunicorn -G gunicorn
USER gunicorn
CMD gunicorn -c gunicorn.conf.py app:app --access-logfile - --error-logfile -
