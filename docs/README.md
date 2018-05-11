# Vue Django (a vue-django-webpack-boilerplate)

> [@NdagiStanley](https://github.com/NdagiStanley) has mirrored the [fork](https://github.com/NdagiStanley/vue-django-fork) to have this repo here. This starterpack has proved useful to many and I thank you for the emails I have received from all of you. The reasoning behind this mirror is that this is an effort to **support the users** more by develop further on this project. From here on, I am calling on all potential collaborators by making it easier to make [PRs](https://github.com/NdagiStanley/vue-django/pulls) and adding utility of [Issues](https://github.com/NdagiStanley/vue-django/issues) in this 'new' repo (Of course with the same name :) ). Lastly, just so you know, I'll be keeping up with developments in the [`original`](https://github.com/vuejs-templates/webpack).

# Introduction
> A full-featured Webpack setup with hot-reload, lint-on-save, unit testing & css extraction integrated into a django application

### [Github repository](https://github.com/NdagiStanley/vue-django)

# Vue Django
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Help Contribute to Open Source](https://www.codetriage.com/ndagistanley/vue-django/badges/users.svg)](https://www.codetriage.com/ndagistanley/vue-django)

[![Build Status](https://semaphoreci.com/api/v1/stanmd/vue-django/branches/v1-d1/badge.svg)](https://semaphoreci.com/stanmd/vue-django)
[![Updates](https://pyup.io/repos/github/NdagiStanley/vue-django/shield.svg)](https://pyup.io/repos/github/NdagiStanley/vue-django/)
[![Python 3](https://pyup.io/repos/github/NdagiStanley/vue-django/python-3-shield.svg)](https://pyup.io/repos/github/NdagiStanley/vue-django/)

[https://vuedjango.herokuapp.com/](https://vuedjango.herokuapp.com/) is a deployed instance of this boilerplate.

<p align="center">
  <b>Listed in</b>
  <br>
  <a href="https://github.com/vuejs/awesome-vue#scaffold" target="_blank"><img src="https://github.com/vuejs/awesome-vue/raw/master/logo.svg?sanitize=true" align="center" height="150" alt="Awesome VueJS"></a>
</p>

## Usage of Vue-Django

This is a project template that includes `VueJS` and `Django` based on the [vue-cli](https://github.com/vuejs/vue-cli) templates. **It is recommended to use npm 3+ for a more efficient dependency tree.**

## Quickstart

To use this template, scaffold a project with [vue-cli](https://github.com/vuejs/vue-cli). **It is recommended to use npm 3+ for a more efficient dependency tree.**

``` bash
$ npm install -g vue-cli
$ vue init NdagiStanley/vue-django my-project
$ cd my-project
$ npm install
$ npm run dev
```

### Deploy with Django

Ensure python and pip is installed.

```bash
$ npm run build
$ pip install -r requirements.txt
$ python format_index_html.py
$ python manage.py collectstatic --noinput
$ python manage.py runserver
```

Open the app [here](localhost:8000)

### Deploy with Docker

Ensure that docker is running.

If you use docker in your workflow, there is a Dockerfile (that you can build an image from) in the root directory for you. `docker-compose` is the easiest way to get up and running. Simply run:

```bash
$ docker-compose up
```

Open the app [here](localhost:8000)
