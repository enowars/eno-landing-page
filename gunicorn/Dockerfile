FROM python:alpine3.8

RUN apk add --no-cache postgresql-dev gcc musl-dev \
    jpeg-dev zlib-dev freetype-dev \
    python3-dev libffi-dev

RUN pip install --upgrade pip
RUN pip install flask gunicorn Flask-Mail psycopg2 Pillow apache-libcloud cryptography hcloud

WORKDIR /app
EXPOSE 8000


RUN addgroup -S gunicorn && adduser -S gunicorn -G gunicorn
USER gunicorn
CMD gunicorn -b 0.0.0.0:8000 app:app --access-logfile - --error-logfile -
