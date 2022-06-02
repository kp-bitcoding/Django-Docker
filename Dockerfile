# # base image  
# FROM python:3.8-slim-buster   
# # setup environment variable  
# ENV DockerHOME=/home/app/webapp  

# # set work directory  
# RUN mkdir -p $DockerHOME  

# # where your code lives  
# WORKDIR $DockerHOME  

# # set environment variables  
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1  

# # install dependencies  
# RUN pip install --upgrade pip  

# # copy whole project to your docker home directory. 
# COPY . $DockerHOME  
# # run this command to install all dependencies  
# RUN pip install -r requirements.txt && python manage.py makemigrations && python manage.py migrate

# # port where the Django app runs  
# EXPOSE 8000  

# # start server  
# CMD python manage.py runserver 0.0.0.0:8000


# ---------------------------> Persional Docker Image Creation <-------------------------------

# base image  
FROM python:3.8-slim-buster   
# set environment variables  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  
# where your code lives  
RUN pip install --upgrade pip
WORKDIR /app
# copy whole project to your docker home directory. 

COPY . .
RUN pip install -r requirements.txt
# run this command to install all dependencies and db migrations.