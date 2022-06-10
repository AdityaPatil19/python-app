FROM python:3.6
WORKDIR /app
RUN apt-get update && \
    apt-get install -y python3-dev && \
    apt-get install build-essential -y && \
    pip install flask
RUN python endpoint_app.py
