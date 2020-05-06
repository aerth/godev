if [ "x$GODEV_SHARED_DIR" == "x" ]; then
  GODEV_SHARED_DIR=$PWD/data
  echo set the GODEV_SHARED_DIR environmental variable to use custom host directory
fi
echo "shared directory: $GODEV_SHARED_DIR"
echo "in docker container: /src"
mkdir -p $GODEV_SHARED_DIR
docker run -it -v $GODEV_SHARED_DIR:/src aerth:go bash
