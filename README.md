# go development container

  * vim-go (auto-complete and more)
  * tmux
  * bash
  * gcc (builds CGO programs against musl lib)

### debugging tools

  * dlv
  * valgrind
  * gdb
  * file

### usage

By default, GoDev creates a directory to be shared with the container in `./data`, relative to current working directory. You may want to change this behavior.

You can also edit the launcher script to add port forwarding etc

Change line 2 of the GoDev launcher script to this:

`GODEV_SHARED_DIR=$PWD`

Or always use the same directory, regardless of from where it is being ran.

`export GODEV_SHARED_DIR=$HOME/src`

Note: since you are user `root` in the container, we `chown` the shared dirctory when exiting the session. This could take a while lead to unexpected results if the shared directory is not even owned by the user, for example, `/`.

It's safer to use a dedicated shared directory such as `$PWD/data` by using the GODEV_SHARED_DIR variable in ~/.bashrc or editing the GoDev launcher script.

### installation
  * `wget -O GoDev https://raw.githubusercontent.com/aerth/godev/master/GoDev`
  * `chmod +x GoDev`

finally, move `GoDev` to `/usr/local/bin/` or somewhere in `$PATH`

### notes

No point setting `CGO_ENABLED=0` by default.
To make static compiled non-cgo programs:

  * `export CGO_ENABLED=0`

Or:

  * `export GOFLAGS=-tags=osusergo,netgo`

Or if using CGO, something like this in your Makefile

```
buildflags += --ldflags '-linkmode external -extldflags "-static"'
test:
        go build -v $(buildflags) -o $@
```

The image comes out to 1.25 GB


