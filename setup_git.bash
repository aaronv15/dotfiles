mkdir -p ~/.config/git
touch ~/.config/git/config

vared -p "Email: " -c email
vared -p "Name: " -c name

git config --global user.email "$email"
git config --global user.name "$name"

git config --global core.editor nvim

git config --global alias.st "status"
git config --global alias.addd "add ."
