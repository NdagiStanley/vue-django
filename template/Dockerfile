FROM node:alpine
LABEL maintainer="NdagiStanley" \
      contact="ndagis@gmail.com" \
      description="@Django integrated with a full-featured @Webpack + (@vuejs / vue-loader) setup with hot reload, linting, testing & css extraction."
RUN apk update && apk upgrade

WORKDIR /app

# Install python, pip and python packages
RUN apk add python3 curl
COPY requirements.txt requirements.txt
RUN curl https://bootstrap.pypa.io/get-pip.py | python3 \
  && rm -rf /var/cache/apk/* \
  && pip3 install --upgrade pip \
  && pip3 install -r requirements.txt

# Install node modules
COPY package.json package.json
RUN npm set progress=false && npm install -s --no-progress
COPY . .
RUN sh build.sh

ENV DEBUG=False

# EXPOSE port to be used
ENV PORT=8000
EXPOSE 8000

# Set command to run as soon as container is up
CMD python3 manage.py runserver 0.0.0.0:$PORT
