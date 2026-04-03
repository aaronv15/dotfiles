printf 'No\nYes' \
   | fuzzel \
      --mesg "Exit Sway: This will terminate your Wayland session" \
      --mesg-mode=expand \
      --dmenu \
      --only-match \
   | read response

if [[ "$response" == "Yes" ]]; then
   swaymsg exit
fi
