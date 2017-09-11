# Elasticsearch Curator Docker

Docker image with latest vertion of [Alpine](https://github.com/gliderlabs/docker-alpine) image running Elastic Search Curator as daily cron job.

## Usage:
```docker run -d --name {container name} -e key=value```

## Avialable environment variables:
+ `hosts` Elastic Search service IP address.
+ `port` Elastic Search service PORT.
+ `http_auth` basic http authentication.
+ `unit_count` count of days you want to store them.

