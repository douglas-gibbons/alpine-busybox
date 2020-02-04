FROM busybox:1.30.1

FROM alpine:3.11.3
RUN apk add bash python
COPY --from=busybox / /
