FROM python:2

RUN apt-get update && apt-get install -y python-gdal python-lxml

WORKDIR /opt/NLExtract
COPY . ./

RUN pip install --no-cache-dir psycopg2-binary

CMD [ "python", "./bag/src/bagextract.py" ]