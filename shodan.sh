#!/bin/bash
clear
sleep 0.5
trap 'bye;' 2
bye(){
  echo -e "bye\n"
}
banner(){
figlet -w digital "Shodan Data" | lolcat -S  20 -a -d 30
  
}
banner
echo -e "\e[1;36m[1]TV\n"
TV(){
  shodan init LCg5ntyLdXWrylgW5ShKNlE96Z9eTTAo
  shodan search TV
}
echo -e "\e[1;36m[2]org\n"
org(){
  shodan search org
}
echo -e "\e[1;36m[3]android open port\n"
android(){
  shodan search android
}
echo -e "\e[1;36m[4]Rader\n"
rader(){
  shodan search rader
}
echo -e "\e[1;36m[5]domain information\n"
data(){
  shodan search data
}
echo -e "\e[1;36m[6]shodan api key install\n"
echo -e "\e[1;31m[7]Exit\n"
read -p $'\e[1;32mSearch Shodan info :' info

case $info in 
1)
banner
TV

;;
2)
banner
org
;;
3)
banner
android
;;
4)
banner
rader
;;
5)
banner
data
;;
6)
shodan init LCg5ntyLdXWrylgW5ShKNlE96Z9eTTAo
exit
;;
7)
banner
exit
;;
*)
exit
;;


esac


trap 2

