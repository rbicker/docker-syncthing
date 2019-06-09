Syncthing
=========

* image to run (latest)  syncthing discovery- or relay-server as a docker container.
* exposes port 5000

# examples
```
# run discovery server
docker run --name st-disco -d -p5000:5000 rbicker/syncthing stdiscosrv --listen 5000 # ...

# run relay server
docker run --name st-relay -d -p5000:5000 rbicker/syncthing strelaysrv --listen 5000 # ...
```
