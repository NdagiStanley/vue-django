FROM node:alpine
MAINTAINER Stanley Ndagi "ndagis@gmail.com"
RUN apk update && apk upgrade

WORKDIR /app

# Install python, pip and python packages
RUN apk add python3 curl
COPY requirements.txt requirements.txt
RUN curl https://bootstrap.pypa.io/get-pip.py | python3 \
  && rm -rf /var/cache/apk/* \
  && pip3 install --upgrade pip \
  && pip3 install -r requirements.txt

# Run the following commands for deployment
COPY package.json package.json
RUN npm set progress=false && npm install -s --no-progress
COPY . .
RUN npm run build
RUN python3 format_index_html.py
RUN python3 manage.py collectstatic --noinput

# EXPOSE port to be used
EXPOSE 8000

# Set command to run as soon as container is up
CMD python3 manage.py runserver 0.0.0.0:8000
