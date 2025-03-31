FROM alpine:3.21

# create user "debug" in group "debug"
RUN addgroup \
    --gid "1000" \
    debug \
&&  adduser \
    --disabled-password \
    --gecos "" \
    --ingroup "debug" \
    --uid "1000" \
    debug

# telnet and co.
RUN apk add --no-cache busybox-extras

RUN apk add --no-cache openssh-client

# host
RUN apk add --no-cache iputils-ping

# dig and host
RUN apk add --no-cache bind-tools

# HTTP debug
RUN apk add --no-cache curl wget
RUN apk add --no-cache jq

VOLUME /home/debug
WORKDIR /home/debug

USER debug
CMD ["/bin/sh","-c","trap : TERM INT; sleep 9999999999d & wait"]
