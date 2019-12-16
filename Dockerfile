FROM python:3-alpine
MAINTAINER pawelk

RUN apk update && \
    apk upgrade && \
    python -m pip install --upgrade pip && \
    pip3 install flask

RUN mkdir /datac

COPY * /datac

CMD ["python3","/datac/mainscript.py"]

EXPOSE 5000
