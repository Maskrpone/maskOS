#!bin/sh

fish

echo "configuration oh my fish"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

omf install bobthefish

omf install z

cd /home/maskrpone

rm .config/fish/config.fish

cp Documents/github/dotfiles/config/fish/config/fish .config/fish/



