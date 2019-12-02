FROM alpine

RUN apk add --no-cache \
    curl jq

COPY ./assets/bin/entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
