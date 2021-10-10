FROM node:lts-bullseye

RUN \
  apt-get update -y \
  && apt-get install -y git vim-gtk3 bash curl pip \
  && git clone --depth 1 https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac -b v3.0.0 \
  && curl https://raw.githubusercontent.com/daizu39/dotfiles/master/_vimrc -o /root/.vimrc \
  && curl https://raw.githubusercontent.com/daizu39/dotfiles/master/_bashrc -o /root/.bashrc \
  && vim -c PackUpdateClose \
  && npm install -g azure-functions-core-tools@3 --unsafe-perm true \
  && curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
  && pip install fastapi

WORKDIR /root
