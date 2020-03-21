#!/usr/bin/env sh

cd $HOME

echo "Installing python ..."
pacman -Syu --noconfirm python python-pip python2 python2-pip

echo "Installing vim, neovim and zsh ..."
pacman -Syu --noconfirm vim neovim zsh bash

echo "Installing nodejs, yarn and npm ..."
pacman -Syu --noconfirm nodejs yarn npm

echo "Installing java and maven ..."
pacman -Syu --noconfirm jdk-openjdk jre-openjdk maven

echo "Installing other apps ..."
pacman -Syu --noconfirm gcc go ruby git make cmake openssh wget curl fzf \
    p7zip unrar unzip zip unarchiver bzip2 gzip lrzip lz4 lzip lzop xz tar \
    texlive-core texlive-lang ffmpeg

echo "Installing pyenv ..."
curl https://pyenv.run | bash
pyenv install 3.7.4
pyenv install 2.7.17
pyenv shell 2.7.17 && pip install neovim
pyenv shell 3.7.4 && pip install neovim pylint autopep8 tensorflow flask flask-cors flask-socketio python-dotenv nltk pandas sox soundfile absl-py librosa tensorflow-addons matplotlib pytorch
pyenv global 3.7.4

echo "Installing vundle.vim ..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Setting up yarn ..."
yarn global add spaceship-prompt coffeescript typescript react react-cli create-react-app react-native react-native-cli

echo "Setting up npm ..."
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

echo "Copying configs ..."
cp -r /root/resources/configs/* /root/.configs
cp -r /root/resources/home/* /root

# change own of home dir
chown -R root:root /root

echo "Setup darch completed"