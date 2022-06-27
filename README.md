Flask API
Writing GET API task in flask and deploying the app on Heroku

Authors
@Syed00111

Installation
Install docker, pip, flash, python, git

GET API Code
import flask 
app = flask.Flask(__name__) 
app.config["DEBUG"] = True 
#app.route('/' , methods=["GET"]) 
def home(): 
   return "Hello world" 
app.run()

DOCKERFILE
FROM python:3.6-buster 
MAINTAINER Syed 
COPY requirements.txt 
COPY api.py . 
RUN pip install -r requirements.txt 
RUN pip install flask_restful 
CMD gunicorn --workers=1 --bind=127.0.0.1:5000 --timeout=3 api:app

Deployment
To see the deployment on github and heroku:
https://github.com/Syed00111/repo1.git
https://git.heroku.com/bytelearn-task-heroku.git
