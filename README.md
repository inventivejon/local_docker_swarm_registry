# local_docker_swarm_registry
Docker Registry for use in docker-swarm with nginx as proxy to only allow from server_name localhost and deny all other

You can use it by calling the script StartRegistry.sh

>> sudo ./StartRegistry.sh

You can stop it by calling StopRegistry.sh

>> sudo ./StopRegistry.sh

You can call and use the registry from all connected docker swarm nodes from the docker swarm you deployed to.

>> curl localhost:5001/v2/_catalog
