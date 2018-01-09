FROM node:alpine
MAINTAINER Stanley Ndagi "ndagis@gmail.com"
RUN apk update && apk upgrade

WORKDIR /app

# Install python, pip and python packages
RUN apk add python curl
RUN curl https://bootstrap.pypa.io/get-pip.py | python
RUN rm -rf /var/cache/apk/*
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Run the following commands for deployment
COPY . .
RUN npm set progress=false && npm install -s --no-progress && npm run build
RUN python format_index_html.py
RUN python manage.py collectstatic --noinput

# EXPOSE port to be used
EXPOSE 8000

# Set command to run as soon as container is up
CMD python manage.py runserver 0.0.0.0:8000
