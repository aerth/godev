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


