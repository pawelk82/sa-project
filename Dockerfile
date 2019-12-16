FROM ubuntu:latest
MAINTAINER pawelk

RUN apt update && \
    apt upgrade -y && \
    apt install -y  python3 python3-pip curl libpq-dev && \
    pip3 install flask && \
    pip3 install Flask-SQLAlchemy && \
    pip3 install psycopg2
    
RUN mkdir /datac

COPY . /datac/

#RUN pip3 install -r /datac/requirements.txt

ENV FLASK_APP mainscript.py
#ENTRYPOINT ["python3", "-m", "flask", "run", "--host=0.0.0.0", "/datac/mainscript.py"]
#ENV LC_ALL=C.UTF-8
#ENV LANG=C.UTF-8

CMD ["python3","/datac/mainscript.py"]

EXPOSE 5000
