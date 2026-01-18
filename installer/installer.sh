!#/bin/zsh

rm -rf ~/tt

git clone https://github.com/abdelilah-dev/ws_conf.git ~/ws_conf
make -C ~/ws_conf

if ! grep -q "ws_conf/mbin" ~/.zshrc; then
    echo "ws_conf/mbin" >> ~/.zshrc
fi

if ! grep -q "usrbanner" ~/.zshrc; then
    echo "usrbanner" >> ~/.zshrc
fi

if ! grep -q "rctmeme" ~/.zshrc; then
    echo "rctmeme" >> ~/.zshrc
fi

zsh 
source ~/.zshrc