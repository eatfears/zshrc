docker run -it \
  --rm \
  --name tmux \
  --volume ${PWD}/share:/home/user/share:rw \
  tmux \
  /bin/bash

sudo cp -vfi ./share/tmux  /usr/bin/