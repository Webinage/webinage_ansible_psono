If you want to bootstrap and get admin, you'll have to manually run:

docker run --rm --network psononet \
  -v /opt/docker/psono/settings.yaml:/root/.psono_server/settings.yaml \
  -ti psono/psono-server:latest python3 ./psono/manage.py createuser username@example.com myPassword email@something.com

docker run --rm --network psononet \
  -v /opt/docker/psono/settings.yaml:/root/.psono_server/settings.yaml \
  -ti psono/psono-server:latest python3 ./psono/manage.py promoteuser username@example.com superuser