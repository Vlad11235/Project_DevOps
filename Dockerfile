FROM ubuntu

RUN apt-get update &&  \
	apt-get install -y virtualenv && \
	virtualenv flask &&  \
	flask/bin/pip install flask==0.9 && \
	flask/bin/pip install flask-login && \
	flask/bin/pip install flask-openid && \
	flask/bin/pip install flask-mail  && \
	flask/bin/pip install sqlalchemy==0.7.9 && \
	flask/bin/pip install flask-sqlalchemy==0.16 && \
	flask/bin/pip install sqlalchemy-migrate && \
	flask/bin/pip install flask-whooshalchemy==0.54a && \
	flask/bin/pip install flask-wtf==0.8.4 && \
	flask/bin/pip install pytz==2013b && \
	flask/bin/pip install flask-babel==0.8 && \
	flask/bin/pip install flup && \
	mkdir app  

ADD __init__.py ./app
ADD views.py ./app
ADD run.py .

RUN chmod a+x run.py && \
CMD	./run.py 
EXPOSE 5000
