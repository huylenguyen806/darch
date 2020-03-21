#!/bin/bash
cd $HOME

echo "Installing apps ..."
pacman -Syu --noconfirm gcc go ruby git make cmake openssh wget curl fzf \
    p7zip unrar unzip zip unarchiver bzip2 gzip lrzip lz4 lzip lzop xz tar \
    python python-pip python2 python2-pip pyenv \
    vim neovim zsh \
    nodejs yarn npm \
    jdk-openjdk jre-openjdk maven \
    texlive-core texlive-lang \
    ffmpeg libffi

echo "Installing vundle.vim ..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
pip install neovim
pip2 install neovim

echo "Setting up yarn ..."
yarn global add spaceship-prompt coffeescript typescript react react-cli create-react-app react-native react-native-cli

echo "Setting up npm ..."
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

echo "Setting up pyenv"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.7.7
pyenv shell 3.7.7 && pip install pylint autopep8 tensorflow flask flask-cors flask-socketio python-dotenv nltk pandas sox soundfile absl-py librosa tensorflow-addons matplotlib pytorch
pyenv global 3.7.7

echo "Setting up zsh ..."
# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Zsh auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/zsh-autosuggestions
# Zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting

echo "Copying configs ..."
cp -r /root/resources/configs/* /root/.configs
cp -rT /root/resources/home /root

# change own of home dir
chown -R root:root /root

mkdir -p /root/drives

ln -s $HOME/.zshrc /etc/profile.d/env.sh

echo "Setup darch completed"