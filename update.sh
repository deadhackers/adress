


dependencies() {

command -v git > /dev/null 2>&1 || { echo >&2 "Package GIT is not installed ... Unable to update ..."; exit 1; }

}

script() {

clear
printf "\n \e[1;32mUpdating \e[1;94m@deadhackers\e[1;52m ...\n\n"
sleep 1.5
cd ..
rm -rf adress
cd adress
chmod +x run.sh
printf "\n\e[1;92mRestarting ...\n\e[0m"
bash run.sh
cd ..

}

dependencies
script

