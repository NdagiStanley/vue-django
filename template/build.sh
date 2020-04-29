echo '...Run npm build'
npm run build
echo '...Done...'

echo '...Format index.html as Jinja template'
python3 format_index_html.py
echo '...Done...'

echo '...Collect static'
python3 manage.py collectstatic --noinput
echo '...Done...'

echo '...Run migrations'
python3 manage.py migrate
echo '...Done...'
