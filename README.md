# local_docker_swarm_registry
Docker Registry for use in docker-swarm with nginx as proxy to only allow from server_name localhost and deny all other

Before you start:
Replace in docker-compose.yml file <YourUsername> wit a username and <YourPassword> with a password. You will not need it in operation. It is only for internal security.

You can use it by calling the script StartRegistry.sh

>> sudo ./StartRegistry.sh

You can stop it by calling StopRegistry.sh

>> sudo ./StopRegistry.sh

You can call and use the registry from all connected docker swarm nodes from the docker swarm you deployed to.

>> curl 127.0.0.1:5001/v2/_catalog

and PLEASE don't use localhost instead. Will not work.
