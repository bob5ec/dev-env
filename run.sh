mkdir -p src
docker run -u $UID:`id -g` -v $PWD/src:/src -it --rm dev-env
