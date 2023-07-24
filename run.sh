

clear

banner() {








                           \e[1;95mv1.8-BETA\n"
printf "\n\e[1;92m   Coded by \e[1;94m@deadhacker1\n\n\e[1;92m"
}
dependencies() {
command -v git > /dev/null 2>&1 || { echo >&2 "Package GIT is not installed ... Aborting ..."; exit 1; }
command -v python3 > /dev/null 2>&1 || { echo >&2 "Package Python3 is not installed ... Aborting ..."; exit 1; }
}
script() {
printf "\n\e[1;92m[\e[1;93m01\e[1;92m] Find information via phone number\n[\e[1;93m02\e[1;92m] Find location via IP Address/Website Link\n[\e[1;93m03\e[1;92m] Phone Number Tracker (Recommanded to find IP Address)\n[\e[1;93m04\e[1;92m] Exit"
read -p $'\n\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[1;93m Choose an option: \e[1;93m' option

if [[ $option == 1 || $option == 01 ]]; then
	printf "\n\nEnter your phone number in international format ...\n"
	read -p $'\n\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[1;93m Enter Number: \e[1;92m' optiona

	printf "\n\e[1;92m This process will take a few moments ...\n\n\e[1;92m"
	sleep 2.9
	python3 files/phoneinfoga.py -n $optiona
	printf "\n\n\e[1;92mNOTE: If you get any problem while using this tool than please report to\nTelegram Group: \e[1;96mhttp://t.me/linux_repo\e[1;92m\n"
	script

elif [[ $option == 2 || $option == 02 ]]; then
	printf "\n\n\e[1;92mEnter IP Address or website link to find location ...\nExample: 198.235.36.25\n         google.com   \e[1;91m[Don't enter \e[1;96mhttp://\e[1;91m]"
	read -p $'\n\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[1;93m Enter: \e[1;92m' optionb

	printf "\n\e[1;92m Please wait ...\n\n\e[1;92m"
	sleep 3
	python3 files/ipgeolocation.py -t $optionb
	printf "\n\n\e[1;92mNOTE: If you get any problem while using this tool than please report to\nTelegram Group: \e[1;96mhttp://t.me/linux_repo\e[1;92m\n"
	script

elif [[ $option == 3 || $option == 03 ]]; then
	printf "\n\nEnter your phone number in international format ...\n"
	read -p $'\n\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[1;93m Enter Number: \e[1;92m' optionc

	python3 files/tracker.py $optionc
	printf "\n\n\e[1;92mNOTE: If you get any problem while using this tool than please report to\nTelegram Group: \e[1;96mhttp://t.me/linux_repo\e[1;92m\n"
	script

elif [[ $option == 4 || $option == 04 ]]; then
	printf "\n\n\e[1;92m Join Telegram Group for feedback:\e[1;96m http://t.me/linux_repo\e[1;92m\n"
	exit 1

else
	printf "\n\n\e[1;91mCommand not found!\e[1;92m\n"
	printf "\n\n\e[1;92mNOTE: If you get any problem while using this tool than please report to\nTelegram Group: \e[1;96mhttp://t.me/linux_repo\e[1;92m\n"

fi
}

banner
dependencies
script
