FROM python:alpine3.19
ENV PYTHONNUNBUFFERED=1

WORKDIR /app

COPY  requirements.txt /app/

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt

COPY . /app/