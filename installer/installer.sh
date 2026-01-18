!#/bin/zsh

rm -rf ~/tt

git clone https://github.com/abdelilah-dev/ws_conf.git ~/tt
make -C ~/tt

if ! grep -q "ws_conf/mbin" ~/.zshrc; then
    echo "ws_conf/mbin" >> ~/.zshrc
fi

# if [ cat ~/.zshrc | grep "usrbanner" | wc -l ] -eq 0; then
#     echo "usrbanner" >> ~/.zshrc
# fi

# if [ cat ~/.zshrc | grep "rctmeme" | wc -l] -eq 0; then
#     echo "rctmeme" >> ~/.zshrc
# fi
if ! grep -q "usrbanner" ~/.zshrc; then
    echo "usrbanner" >> ~/.zshrc
fi

if ! grep -q "rctmeme" ~/.zshrc; then
    echo "rctmeme" >> ~/.zshrc
fi

zsh 
source ~/.zshrc