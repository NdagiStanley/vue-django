echo 'Running npm install & npm build'
npm set progress=false && npm install -s --no-progress && npm run build
echo 'Done...'

echo 'Format index.html as Jinja template'
python format_index_html.py
echo 'Done...'

echo 'Install python modules'
pip install -r requirements.txt
echo 'Done...'

echo 'Collect static'
python manage.py collectstatic --noinput
echo 'Done...'

export PORT=8000
echo 'Server runnning on port ' $PORT
python manage.py runserver
