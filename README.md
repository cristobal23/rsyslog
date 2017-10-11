# rsyslog
Example of container logging with rsyslog

To start services, you may use:
```bash
$ docker-compose up -d
```
To tail the centralized logging service, you may use:
```bash
$ docker exec log_service tail -f /var/log/messages
```

## Requirements & Assumptions
Docker Compose was chosen to define the interaction between multiple containers. The assumption was made that the host OS is some form of Linux and that the docker engine is storing the container logs at `/var/lib/docker/containers/`.
