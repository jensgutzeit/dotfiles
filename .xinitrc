[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
/usr/bin/urxvtd --quiet --opendisplay --fork
exec /usr/bin/awesome
