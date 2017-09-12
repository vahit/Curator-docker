# Elasticsearch Curator Docker

Docker image with latest vertion of [Alpine](https://github.com/gliderlabs/docker-alpine) image running Elastic Search Curator as daily cron job.

## Usage:
### one line command:
`docker run -d --name {container name} -e key=value`
### systemctl/systemd approach:
create `curator-docker.service` file in `/etc/systemd/system` directory with bellow content:
```bash
[Unit]
Description=Elastic Search Curator
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker run --rm --name curator -e host=<IP> -e port=9200 -e auth=<user:pass> -e unit_count=<days> <image name>
ExecStop=/usr/bin/docker stop -t 1 curator

[Install]
WantedBy=default.target
```
enable and start it like the other services.

## Avialable environment variables:
+ `host` Elastic Search service IP address.
+ `port` Elastic Search service PORT.
+ `auth` basic http authentication.
+ `unit_count` count of days you want to store them.

