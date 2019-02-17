#! /bin/bash
clear
printf '\033]2;INSTALLER\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/mscript" ]]
then
	echo -e "Instaling MOU Script Please wait..."
	sleep 4
	if [[ -d /root/mscript ]]
	then
		rm -r /root/mscript
	fi
	mkdir /root/mscript
	cp -r "$DIR"/* /root/mscript
	chmod +x /root/mscript/install.sh
	gnome-terminal -e "bash /root/mscript/install.sh"
fi
echo -e "Installing mscript..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/mscript/mo1
chmod +x /root/mscript/mo2
chmod +x /root/mscript/mo3
chmod +x /root/mscript/mo31
chmod +x /root/mscript/m
chmod +x /root/mscript/mo4
chmod +x /root/mscript/mo41
chmod +x /root/mscript/mo42
chmod +x /root/mscript/mo43
chmod +x /root/mscript/ls/m131.sh
chmod +x /root/mscript/ls/m132.sh
chmod +x /root/mscript/ls/m133.sh
chmod +x /root/mscript/uninstall.sh
clear
echo -e "Copying script to /bin/mscript"
sleep 1
mkdir /bin/mscript
cd /root/mscript
cp /root/mscript/m /bin/mscript
cp /root/mscript/mo1 /bin/mscript
cp /root/mscript/mo2 /bin/mscript
cp /root/mscript/mo3 /bin/mscript
cp /root/mscript/mo31 /bin/mscript
cp /root/mscript/mo4 /bin/mscript
cp /root/mscript/mo41 /bin/mscript
cp /root/mscript/mo42 /bin/mscript
cp /root/mscript/mo43 /bin/mscript
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/mscript")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "I SAID USE it ONLY ONE TIME..........."
		sleep 3
	fi
	echo -e "Adding mscript to PATH so you can access it from anywhere"
	sleep 1
	export PATH=/bin/mscript:$PATH
	sleep 1
	echo "export PATH=/bin/mscript:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Congratulations...you are now using MOU Script..open new window then type m "
sleep  4
gnome-terminal -e m
exit
