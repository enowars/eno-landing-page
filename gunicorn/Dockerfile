FROM python:3.8-slim

#RUN apk add --no-cache postgresql-dev gcc musl-dev \
#    jpeg-dev zlib-dev freetype-dev \
#    python3-dev libffi-dev

RUN apt-get update && apt-get install -y libpq-dev

RUN pip install --upgrade pip
RUN apt-get install -y build-essential
RUN pip install requests==2.23.0 flask Flask-Mail psycopg2 Pillow apache-libcloud cryptography hcloud desec-dns-api gunicorn[gevent]

WORKDIR /app
EXPOSE 8000


RUN adduser --system gunicorn
USER gunicorn
CMD gunicorn -c gunicorn.conf.py app:app --access-logfile - --error-logfile -
