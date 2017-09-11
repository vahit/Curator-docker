FROM alpine:latest
MAINTAINER vahit<vahid.maani@gmail.com>

RUN apk update && \
    apk upgrade && \
    apk add python3 py-pip bash && \
    pip install elasticsearch-curator

COPY ./configs/ /root/.curator
COPY ./bin/ /root

ENTRYPOINT ["sh", "/root/entrypoint.sh"]
