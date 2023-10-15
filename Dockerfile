FROM alpine:3.18

# telnet
RUN apk add busybox-extras

RUN apk add openssh-client

RUN apk add curl
RUN apk add wget
RUN apk add iputils-ping
# dig and host
RUN apk add bind-tools
RUN apk add jq

CMD ["/bin/sh","-c","trap : TERM INT; sleep 9999999999d & wait"]


