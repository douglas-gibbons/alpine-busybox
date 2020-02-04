# alpine-busybox

Alpine, Bash, Busybox and Python in one container. I made it for version testing, but you can use it for whatever you like


# Tag Formats

Tags should be of the format:

```
alpine-<alpine version>_busybox-<busybox version>
```


# Update and Commit

Is like this:

```
BUSYBOX=1.31.1
ALPINE=3.10.4
sed --in-place 's/busybox:.*\w/busybox:'$BUSYBOX'/' Dockerfile
sed --in-place 's/alpine:.*\w/alpine:'$ALPINE'/' Dockerfile
git add Dockerfile
git commit -m "busybox update"
git tag alpine-${ALPINE}_busybox-${BUSYBOX}
git push --tag
```
