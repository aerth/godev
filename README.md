# and yet another development image

If you just want to mess around, you can test with:

	docker pull aerth/godev
	docker run -it aerth/godev


Chances are you will want some kind of persistence.
Save and modify this bash script to start up the environment
This script assumes your deploy key is in /opt/devjail/ssh/, and
your gnupgp directory is /opt/devjail/gnupg.

```
#!/bin/bash
docker run -it \
        -v /opt/devjail/ssh:/root/.ssh \
        -v /opt/devjail/gnupg:/root/.gnupg \
        -v /opt/gopath:/go \
        -v /opt/data:/opt \
        aerth/godev
```

For use with no ssh/gpg keys, here is a more simple example

```
sudo mkdir -p /opt/gopath /opt/data
docker run -it -v /opt/gopath:/go -v /opt/data:/opt aerth/godev
```

## Tools:

  * vim (with [vim-go](https://github.com/fatih/vim-go))
  * [micro](https://github.com/zyedidia/micro) (with go plugin)
  * tmux
  * [asciinema](https://github.com/asciinema/asciinema)
  * go tools (see [Dockerfile](Dockerfile))
  * thats all folks

## [Docker Hub](https://hub.docker.com/r/aerth/godev/builds/)
