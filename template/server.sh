sh ./build.sh

export PORT=8000
echo '...Server runnning on port ' $PORT
python3 manage.py runserver $PORT
