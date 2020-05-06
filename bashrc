OWNER=`stat -c '%u' /src`
dockerfix(){
  chown -R $OWNER:$OWNER /src
}

trap dockerfix EXIT

export PATH="/root/go/bin:/root/bin:/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export GOBIN="/root/go/bin"
