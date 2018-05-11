FROM alpine:3.6

RUN apk update && \
	apk add ca-certificates

ADD bin/docker/amd64/github-release /usr/bin/
CMD ["/usr/bin/github-release"]
