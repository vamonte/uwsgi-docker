<<<<<<< HEAD
Based on Phusion's baseimage-docker image, and set up similar to their passenger-docker series, uwsgi-docker provides a clean image for your uWSGI app.

This image expects your app to be placed at /home/app/webapp.py (adjust /etc/service/uwsgi to point somewhere else)

Nginx and uWSGI are disabled by default. Be sure to:
RUN rm -f /etc/service/nginx/down /etc/service/uwsgi/down

For an example app using the Flask microframework, see kkost/uwsgi-flask

Grab this from the Docker Registry at kkost/uwsgi-docker
=======
uwsgi-docker
============

Built using Phusion's baseimage-docker, this image hosts nginx+uwsgi in a fashion similar to Phusion's passenger-docker
>>>>>>> 9627c4cfda881b32d6dcfa7cb28e2641a30947ac
