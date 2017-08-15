FROM node
RUN apt-get update
RUN apt-get install -y python
RUN curl https://bootstrap.pypa.io/get-pip.py | python
WORKDIR /usr/bin/app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN npm run build
RUN python format_index_html.py
RUN python manage.py collectstatic --noinput
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000
