vared -p "comment: " -c COMMENT

# ssh-keygen -t ed25519 -C "$COMMENT"

AKA="15M"
vared -p "For hostname: " -c HOSTNAME
vared -p "User: " -c USER
vared -p "Add keys to agent: " -c AKtoA
vared -p "Key name: " -c KEY_NAME

printf "Host $HOSTNAME
   User $USER
   AddKeysToAgent $AKtoA
   IdentityFile $HOME/.ssh/$KEY_NAME
" #>> ~/.ssh/config
