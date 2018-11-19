FROM python:3.6
MAINTAINER Gabriel Marchini Dantas
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
EXPOSE 9191
COPY requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait
CMD /wait && python3 manage.py runserver 9191