#!bin/sh

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
export PATH="$PATH:$HOME/.local/bin"
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
export FILE="ranger"
export CACHE="$HOME/.local/share/hugoconf"
export PDF="zathura"
#Fix for mathematica
export USE_WOLFRAM_LD_LIBRARY_PATH=1
export PYTHON_BASIC_REPL=1

[ ! -z "$(find $HOME -maxdepth 1 -name '.vim*.tmp')" ] && rm $HOME/.vim*.tmp

if systemctl -q is-enabled graphical.target && [ ! $DISPLAY ] && [ $XDG_VTNR -eq 1 ]; then
  #  echo "Please select WM/DE (default is bspwm)"
  #  read session
  #  exec startx ~/.xinitrc $session
  exec startx > $CACHE/startx.log 2>&1
fi

