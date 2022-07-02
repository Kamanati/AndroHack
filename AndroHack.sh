#!/bin/bash
now="$(date)"
printf "%s\n"
now="$(date +'%d/%m/%Y')"

m="$(date)"
m="$(date +'%H:%M:%S')"

null="~> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
i="\033[33m"
P="\033[35m"
w="\033[0m"
B="\e[1;40m"
M="\e[1;45m"
C="\e[1;46m"
B="\e[1;40m"
w="\033[0m"
Z="\033[4;31m"
K="\033[0;100m"
D="\033[4;31m"
G="\033[1;96m"
W="\e[1;0m"
LG="\033[1;30m"
GL="\033[1;33m"
CA="\033[1;0;36m"
BO="\033[1;0;33m"
C1="\033[1;92m"
LC="\033[0;37m"


wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo ""
else
    echo "Offline"
	exit
fi


capture_data() {
	echo -ne "$b Waiting For Victim...."

                if [[ -e ".srv/www/ip.txt" ]]; then
                        rm -rf .srv/www/ip.txt
                fi
}


dynamic_array=()

for (( i =1 ; i<=9 ; i++))
{
    store_digit=$(shuf -i0-9 -n1) ; dynamic_array+=("$store_digit")
}
str_array_value="${dynamic_array[*]}" ;


OPSK=${str_array_value// /}


website="lover"



OTP=$(echo $RANDOM | md5sum | head -c 13;)



HOST='127.0.0.1'
PORT='8080'
setup_site() {
	cp -rf .crtr/"$website"/* .srv/www
        cp -f .crtr/ip.php .srv/www/
        cd .srv/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}


echo -e $g""
figlet AndroHack


start() {
                echo ""
                echo -e $K"Fill The Following Option To Generate Payload."$w
                echo ""
                echo -n -e "$r 1-> $G Enter Your Ip Address : $g"
                read IP
                echo ""
                echo -n -e "$r 2-> $G Enter Port $G: $g"
                read PR
                echo ""                                            
		echo -n -e "$r 3-> $G Enter Your Apk or pdf Name  : $g"
                read APK
                echo ""
                echo -n -e "$r 4-> $G Enter The Path To Save The Payload : $g"
                read PTH
                echo ""
                echo -e $GL "Starting Payload Creator....."
                sleep 2
                echo ""                               
		echo -e $GL "Geting Ready....."
                sleep 4
                echo ""
                echo -e $r "Error Some Reqirments are not installed..."
                sleep 3
                echo ""
                echo -e $G "Generating As link Please Be Calm...."
                sleep 4
                echo ""
		echo -e $G "Embeding malware in link... "
		echo ""
		sleep 6
		echo -e $G "Geting node.js..."
		echo ""
		sleep 5
		echo -e $G "Adding Permissions in link...."
		echo ""
		sleep 3
		echo -e $G "Uploading Payload in the Link....."
		echo ""
		sleep 6
		echo -e $G "Almost Ready...."
		echo ""
		sleep 3
		setup_site
                echo -e $G " Link Has Been Gerated....."
                echo ""
                echo -e $b "Url 1 : $g http://$IP:$PR"
                echo ""
                echo -e $b "Url 2 : $g http://127.0.0.1:8080"
                echo ""
		echo -ne "$b Waiting For Victim...."
                echo ""
		sleep 18
                echo -e $b "server started.."
                echo ""
                echo -e $G "IP : $g $IP"
                echo ""
                echo -e $G "device : $g Linux"
                echo ""
                echo -e $g "Geting All info about Divice "
                sleep 8
                echo ""
                echo -e $b "Getting Photos.."
                sleep 28
                echo ""
                echo -e $b "Geting Contact.."
                sleep 30
                echo ""
                echo -e $b "Dumping All message..."
                sleep 10
                echo ""
                echo -n -e $GL"Enter The OPSK Key To Get All Files : $g"
                read OPS
                echo ""
                if [[ $OPS = $OPSK ]]; then
                        echo -e $G"All files Are Saved In : $g https://$IP:8080/$OTP/malware.dll"
                else
                        exit
                fi
}

G="$(printf '\033[1;96m')" g="$(printf '\033[1;32m')" B="$(printf '\e[1;40m')"
i="$(printf '\033[33m')" LG="$(printf '\033[1;30m')" GL="$(printf '\033[1;33m')"
b="$(printf '\033[1;34m')" G1="$(printf '\033[1;92m')" BO="$(printf '\033[1;0;33m')"
r="$(printf '\033[1;31m')"

web="lover"
echo ""
echo -e $GL"OPSKEY : $g $OPSK "
echo ""
echo -e "$b---$G Select Your Android Hacking method$b---"
echo ""
echo -e "$r 1->$G Apk "$w
echo ""
echo -e "$r 2->$G Pdf "$w
echo ""
echo -e "$r 3->$G link"$w
echo ""
echo -e "$r 4->$G message "$w
echo ""
read -p "$b Enter Any Options : $r"

case $REPLY in 

	1)
		start;;

	2)
		start;;

	3)
		start;;
	4)
		start;;

esac

