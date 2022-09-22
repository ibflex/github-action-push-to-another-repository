FROM alpine:latest

RUN apk add --no-cache git openssh-client

RUN ls $GITHUB_WORKSPACE
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
