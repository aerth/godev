# and yet another development image

If you just want to mess around, you can test with:

	docker pull aerth/godev
	docker run -it aerth/godev


Chances are you will want some kind of persistence. See GODEV bash script.
This script assumes your deploy key is in /opt/devjail/ssh/, and
your gnupgp directory is /opt/devjail/gnupg. Modify it.

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
