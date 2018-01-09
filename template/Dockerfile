FROM node:alpine
MAINTAINER Stanley Ndagi "ndagis@gmail.com"
RUN apk update && apk upgrade

WORKDIR /app

# Install python, pip and python packages
RUN apk --update add python py-pip openssl ca-certificates py-openssl wget
COPY requirements.txt requirements.txt
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base \
  && rm -rf /var/cache/apk/* \
  && pip install --upgrade pip \
  && pip install -r requirements.txt \
  && apk del build-dependencies

# Run the following commands for deployment
COPY package.json package.json
RUN npm set progress=false && npm install -s --no-progress
COPY . .
RUN npm run build
RUN python format_index_html.py
RUN python manage.py collectstatic --noinput

# EXPOSE port to be used
EXPOSE 8000

# Set command to run as soon as container is up
CMD python manage.py runserver 0.0.0.0:8000
