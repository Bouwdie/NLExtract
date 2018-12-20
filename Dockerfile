FROM python:2

RUN apt-get update && \
    apt-get --yes install \
        libgdal-dev

RUN pip install pygdal==2.1.2.3 lxml psycopg2-binary

WORKDIR /opt/NLExtract
COPY . ./

ENTRYPOINT [ "python", "/opt/NLExtract/bag/src/bagextract.py" ]