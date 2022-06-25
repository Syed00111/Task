FROM python:3.6-buster
MAINTAINER Syed
#COPY requirements.txt
COPY api.py .
RUN pip install -r requirements.txt
RUN pip install flask_restful
CMD gunicorn --workers=1 --bind=127.0.0.1:5000 --timeout=3 api:app
