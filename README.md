# local_docker_swarm_registry
Docker Registry for use in docker-swarm with nginx as proxy to only allow from server_name localhost and deny all other

You can use it by calling the script StartRegistry.sh

>> sudo ./StartRegistry.sh

You can stop it by calling StopRegistry.sh

>> sudo ./StopRegistry.sh

You can call and use the registry from all connected docker swarm nodes from the docker swarm you deployed to.

>> curl 127.0.0.1:5000/v2/_catalog

and PLEASE don't use localhost instead. Will not work.

Example for docker push:
>> docker push 127.0.0.1:5000/simpledreamer_sb_frontend

If you find any issues please report.

Known limitations:
- [swarmpit] Cannot manage registry from swarmpit since swarmpit would try to connect from other container with has its own localhost. Changing the swarmpit container to host network would solve but then the container would not be accessible any more by swarmpit webpage. If anyone has an idea how to solve feel free to contribute. For anyone who don't need managin the registry over swarmpit should be fine.
