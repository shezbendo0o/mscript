#! /bin/bash
function nounistall
{
	echo -e "i will be sad to see you go :("
	sleep 2
	echo -e "If you want any feature to be added, contact me on FB"
	sleep 2
	echo -e " "
	echo -e "Aris"
	sleep 1
	exit
}
echo -e "Do you really want to uninstall the Lazy script from your system?(y/n)(Enter=no): "
read CHUN
if [ "$CHUN" = "y" ]
then
	echo -e "If you have any problems please contact me first."
	echo -e "Do you still wanna get rid of me?(y/n)(Enter=no): "
	read CHCHUN
	if [ "$CHCHUN" = "y" ]
	then
		echo -e "Ok, uninstalling everything that has to do with mscript on your system"
		sleep 4
		rm -r /bin/mscript
		echo -e "Done."
		sleep 1
		echo -e "You need to manually delete the mscript folder from your /root/ directory though..."
		sleep 2
		echo -e "Press any key to exit..."
		read
		exit
	else
		nounistall
	fi
else
	nounistall
fi
