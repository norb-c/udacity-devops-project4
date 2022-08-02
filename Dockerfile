FROM python:3.7.3-stretch

LABEL maintainer="chigozie"

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt
# hadolint ignore=DL3013

EXPOSE 80

# command to run on container start
CMD [ "python", "app.py" ]