!#/bin/bash

rm -rf ~/ws_conf

git clone https://github.com/abdelilah-dev/ws_conf.git ~/ws_conf
make -C ~/ws_conf

if ! grep -q "ws_conf/mbin" ~/.zshrc; then
    echo "PATH=\"$PATH:$HOME/ws_conf/mbin\"" >> ~/.zshrc
fi

if ! grep -q "usrbanner" ~/.zshrc; then
    echo "usrbanner" >> ~/.zshrc
fi

if ! grep -q "angrycat" ~/.zshrc; then
    echo "angrycat" >> ~/.zshrc
fi

source ~/.zshrc
