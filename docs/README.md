# Vue Django (a vue-django-webpack-boilerplate)

> [@NdagiStanley](https://github.com/NdagiStanley) has mirrored the [fork](https://github.com/NdagiStanley/vue-django-fork) to have this repo here. This starterpack has proved useful to many and I thank you for the emails I have received from all of you. The reasoning behind this mirror is that this is an effort to **support the users** more by develop further on this project. From here on, I am calling on all potential collaborators by making it easier to make [PRs](https://github.com/NdagiStanley/vue-django/pulls) and adding utility of [Issues](https://github.com/NdagiStanley/vue-django/issues) in this 'new' repo (Of course with the same name :) ). Lastly, just so you know, I'll be keeping up with developments in the [`original`](https://github.com/vuejs-templates/webpack).

# Introduction
> A full-featured Webpack setup of a VueJS 2.x app with hot-reload, lint-on-save, unit testing & css extraction integrated into a Django 2.x application (There are other versions too)

### [Github repository](https://github.com/NdagiStanley/vue-django)

<a href="https://github.com/NdagiStanley/vue-django"><img alt="star this repo" src="http://githubbadges.com/star.svg?user=NdagiStanley&repo=vue-django&style=default" /></a>
<a href="https://github.com/NdagiStanley/vue-django/fork"><img alt="fork this repo" src="http://githubbadges.com/fork.svg?user=NdagiStanley&repo=vue-django&style=default" /></a>

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Help Contribute to Open Source](https://www.codetriage.com/ndagistanley/vue-django/badges/users.svg)](https://www.codetriage.com/ndagistanley/vue-django)

[![Build Status](https://semaphoreci.com/api/v1/stanmd/vue-django/branches/develop/badge.svg)](https://semaphoreci.com/stanmd/vue-django)
[![Updates](https://pyup.io/repos/github/NdagiStanley/vue-django/shield.svg)](https://pyup.io/repos/github/NdagiStanley/vue-django/)
[![Python 3](https://pyup.io/repos/github/NdagiStanley/vue-django/python-3-shield.svg)](https://pyup.io/repos/github/NdagiStanley/vue-django/)


[https://vuedjango.herokuapp.com/](https://vuedjango.herokuapp.com/) is a deployed instance of this boilerplate. There is a docker image for vue-django that you can run to check it out locally:
```bash
docker run -p 8000:8000 stanmd/vue-django
```

Open the app at [localhost:8000](localhost:8000)

The past command will run the latest tag of the image which has VueJS version 2.x and Django vesion 2.x. There are several other tags of the image you can run:

- For the image with VueJS version 1.x and Django vesion 1.x:

`docker run -p 8000:8000 stanmd/vue-django:v1-d1`

- For the image with VueJS version 2.x and Django vesion 1.x:

`docker run -p 8000:8000 stanmd/vue-django:v2-d1`

<p align="center">
  <b>Listed in</b>
  <br>
  <a href="https://github.com/vuejs/awesome-vue#scaffold" target="_blank"><img src="https://github.com/vuejs/awesome-vue/raw/master/logo.svg?sanitize=true" align="center" height="150" alt="Awesome VueJS"></a>
</p>

<p align="center">
  <img src="https://i.imgur.com/sY3IpBE.png?1" align="center" height="500" alt="Vue-Django">
</p>

## Usage of Vue-Django

This is a project template that includes `VueJS` version 2.x and `Django` version 2.x based on the [vue-cli](https://github.com/vuejs/vue-cli) templates. **It is recommended to use npm 3+ for a more efficient dependency tree.**

## Quickstart

To use this template, scaffold a project with [vue-cli](https://github.com/vuejs/vue-cli). **It is recommended to use npm 3+ for a more efficient dependency tree.**

``` bash
$ npm install -g vue-cli
```

You might want to use ```sudo``` if you encounter permissions error

```bash
$ vue init NdagiStanley/vue-django my-project
```
If you desire to use VueJS version 1.x with Django vesion 1.x run:

`vue init NdagiStanley/vue-django#v1-d1 my-project`.

If you desire to use VueJS version 2.x with Django vesion 1.x run: 

`vue init NdagiStanley/vue-django#v2-d1 my-project` instead.

`my-project` can be replaced with the directory name you prefer. If you do decide on another name take care to replace the next occurence of `my-project` with your new directory name.

```bash
$ cd my-project
$ npm install
```

### Development

Run:
```bash
$ npm run dev
```

and edit away. `Hot reload` is enabled so any changes on `index.html` and the other files will reflect on [localhost:8080](http://localhost:8080/)

### Deploy with Django (Locally)

Ensure python and pip is installed. Preferably create a virtual environment for the project.

```bash
$ npm run build
$ pip install -r requirements.txt
$ python format_index_html.py
$ python manage.py collectstatic --noinput
$ python manage.py migrate
$ python manage.py runserver 0.0.0.0:8000
```

The 6 commands above are contained in the `server.sh` so running the script is as good as running the aforementioned commands:
```
$ ./server.sh
```

Open the app at [localhost:8000](localhost:8000)

### Deploy with Docker (Locally)

Ensure that docker is installed and running. To install `docker` take your pick [here](https://www.docker.com/community-edition) based on your Operating System.

If you use docker in your workflow, there is a Dockerfile (that you can build an image from) in the root directory for you. `docker-compose` is the easiest way to get up and running. Simply run:

```bash
$ docker-compose up
```

Open the app at [localhost:8000](localhost:8000). You'll have to stop the Django server if you ran it earlier or change the port within the `server.sh` from `8000` to something else.
