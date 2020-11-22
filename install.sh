#https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
#install package
php() {
  pkg install php -y
  echo ""
   echo -e "\e[1;32mSuccessful\e[0m"
}
apache(){
  pkg install apache2 -y
    echo ""
    echo -e "\e[1;32mSuccessful\e[0m"
}
ngrok(){
  pkg install wget-y
  wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
  unzip ngrok-stable-linux-arm.zip
  ./ngrok authtoken 1hH7ErqQXsX1NBMA9qMAO8V52Ov_2CWougqGSwciwyPnCDkSz
     echo ""
     echo -e "\e[1;32mSuccessful\e[0m"
}
trap '' 2
echo -e "\e[1;34m
#########################################################
#                                                       #
#              Coder::MAX_H98KER                        #
#              support::package install                 #
#            supported by::Yelll Phone Naing            #
#                                                       #
#########################################################
\e[0m"
echo -e "\e[1;36m
(1)install php

(2)install apache2

(3)install ngrok server

(4)Exit

\e[0m"
read -p $'\e[1;35mChoose Number::\e[0m ' install 
case $install in
1)
php
sleep 1.5
;;
2)
apache
sleep 1.5
;;
3)
ngrok
sleep 1.5
;;
4)
sleep 1.4
echo -e "\e[1;36mBye Bye👋👋\e[0m"
exit;;
*)
echo ""
echo -e "\e[1;31mincorrect your select number\e[0m";;
esac

trap 2