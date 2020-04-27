import sys
import fileinput

file = 'templates/index.html'

with open(file, "r+") as f:
    s = f.read()
    f.seek(0)
    f.write("{% load static %}\n" + s)

for i, line in enumerate(fileinput.input(file, inplace=1)):
    sys.stdout.write(line.replace('/static-vuedj/', "{% static '"))
for i, line in enumerate(fileinput.input(file, inplace=1)):
    sys.stdout.write(line.replace('.css', ".css' %}"))
for i, line in enumerate(fileinput.input(file, inplace=1)):
    sys.stdout.write(line.replace('.js', ".js' %}"))
