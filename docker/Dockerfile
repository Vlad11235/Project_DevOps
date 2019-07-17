FROM ubuntu

RUN apt update 
RUN apt install -y python3 
RUN apt install -y virtualenv 
RUN virtualenv --python=$(which python3) flask &
RUN flask/bin/pip install flask==0.9 
RUN flask/bin/pip install flask-login 
RUN flask/bin/pip install flask-openid 
RUN flask/bin/pip install flask-mail  
RUN flask/bin/pip install sqlalchemy==0.7.9 
RUN flask/bin/pip install flask-sqlalchemy==0.16 
RUN flask/bin/pip install sqlalchemy-migrate 
RUN flask/bin/pip install flask-whooshalchemy==0.54a 
RUN flask/bin/pip install flask-wtf==0.8.4 
RUN flask/bin/pip install pytz==2013b 
RUN flask/bin/pip install flask-babel==0.8 
RUN flask/bin/pip install flup 
RUN mkdir app  
	
ADD __init__.py ./app
ADD views.py ./app
ADD run.py .

RUN chmod a+x run.py && \
CMD	./run.py 
EXPOSE 5000
