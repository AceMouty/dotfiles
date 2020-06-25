
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &> $HOME/.config/sxhkd/logs/sxhkd.log &
nitrogen --restore &
picom -b --config $HOME/.config/picom/picom.conf

exec spectrwm
