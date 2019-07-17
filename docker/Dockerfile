FROM ubuntu

RUN apt -y update
RUN apt install -y python3
RUN apt install -y python3-venv
RUN python3 -m venv venv
RUN source venv/bin/activate
RUN pip install flask
RUN mkdir app

ADD __init__.py ./app
ADD views.py ./app
ADD run.py .
RUN export FLASK_APP=run.py
RUN flask run
EXPOSE 5000
