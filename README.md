# docker-intellij

intellij in a docker container

## usage

```bash
docker run
  --rm \
  --tty \
  --interactive \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix
  razic/intellij
```

**Note:** You may need to run `sudo xhost +` on your host machine.
