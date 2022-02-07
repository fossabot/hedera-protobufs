#! /bin/sh
DIR=${1:-'services'}
case $DIR in
  services)
    cd $DIR
    ;;
  *)
    echo "Unknown proto directory '$DIR'"   
    ;;
esac

docker run --rm \
  -v $(pwd):/out \
  -v $(pwd):/protos \
  pseudomuto/protoc-gen-doc
mv index.html ../
