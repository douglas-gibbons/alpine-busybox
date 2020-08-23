FROM busybox:1.29.3

FROM alpine:3.10.4
RUN apk add bash python
COPY --from=busybox / /
