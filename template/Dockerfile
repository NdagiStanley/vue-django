FROM node
RUN apt-get update

# Install python, pip and python packages
RUN apt-get install -y python
RUN curl https://bootstrap.pypa.io/get-pip.py | python
WORKDIR /usr/bin/app
COPY requirements.txt .
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
