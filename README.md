# and yet another development image

If you just want to mess around, you can test with:

	docker run -it aerth/godev

Chances are you will want some kind of persistence.

	sudo mkdir -p /opt/gopath /opt/data
    docker run -it -v /opt/gopath:/go /opt/data:/opt aerth/godev

## Tools:

  * vim (with [vim-go](https://github.com/fatih/vim-go))
  * [micro](https://github.com/zyedidia/micro) (with go plugin)
  * tmux
  * [asciinema](https://github.com/asciinema/asciinema)
  * go tools (see [Dockerfile](Dockerfile))
  * thats all folks

## [Docker Hub](https://hub.docker.com/r/aerth/godev/builds/)
