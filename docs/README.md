# Introduction

> A full-featured Webpack setup with hot-reload, lint-on-save, unit testing & css extraction integrated into a django application

# Vue Django
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)

### [Github repository](https://github.com/NdagiStanley/vue-django)

[https://vuedjango.herokuapp.com/](https://vuedjango.herokuapp.com/) is a deployed instance of this boilerplate.



## Usage of VueDjango

This is a project template that includes `VueJS` and `Django` based on the [vue-cli](https://github.com/vuejs/vue-cli) templates. **It is recommended to use npm 3+ for a more efficient dependency tree.**

## Quickstart

To use this template, scaffold a project with [vue-cli](https://github.com/vuejs/vue-cli). **It is recommended to use npm 3+ for a more efficient dependency tree.**

``` bash
$ npm install -g vue-cli
$ vue init webpack my-project
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

If you use docker in your workflow, there is a Dockerfile in the root directory for you. Simply run:

```bash
$ docker build -t [image-name] .
$ docker run [image-name]
```

Open the app [here](localhost:8000)
