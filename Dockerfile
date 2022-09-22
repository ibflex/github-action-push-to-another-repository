FROM alpine:latest

RUN apk add --no-cache git openssh-client

RUN ls $GITHUB_WORKSPACE
RUN ls /runner/_work/fpos-open-visibility/fpos-open-visibility
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]