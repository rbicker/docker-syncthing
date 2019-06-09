Syncthing
=========

image to run (latest)  syncthing discovery- or relay-server as a docker container.

# examples
```
# run discovery server
docker run --name st-disco -d -p8443:8443 rbicker/syncthing stdiscosrv --listen 8443 # ...

# run relay server
docker run --name st-relay -d -p22076:22076 rbicker/syncthing strelaysrv --listen 22076 # ...
```
