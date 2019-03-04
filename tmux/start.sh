#!/usr/bin/env bash

chmod 777 ./share

docker run -it \
  --rm \
  --name tmux \
  --volume ${PWD}/share:/home/user/share:rw \
  tmux \
  /bin/bash

sudo cp -vfi ./share/tmux  /usr/bin/
