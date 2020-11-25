#!/bin/bash
clear
trap '' 2
echo -e "\e[1;32m
          #########################################"
echo -e "\e[1;32m          #                                       #
          #########################################
          #                                       #"
echo -e "\e[1;32m          #                                       #"
echo -e "\e[1;32m          #         Coder::MAX_H98KER             #"
echo -e "\e[1;32m          #                                       #"
echo -e "\e[1;32m          #                                       #
          #########################################"
echo -e "\e[1;32m          #                                       #
          #########################################"
          echo ""
          echo ""
  echo -e "\e[1;31m
[1]termux banner tool

[2]facebook bruteforce

[3]install web server tools

[4]start web server

[5]exit
  "
    
  banner(){
     git clone https://github.com/Bhai4You/Termux-Banner
     cd Termux-Banner
     chmod +x requirement.sh
     chmod +x t-ban.sh
     bash requirement.sh
     
  }
  fb(){
    git clone https://github.com/IAmBlackHacker/Facebook-BruteForce
    cd Facebook-BruteForce
    pip3 install requests bs4
    pip install mechanize
   
  }
  install(){
    git clone https://github.com/Tool2020/MHP
    cd MHP
    chmod +x install.sh
   
  }
  start(){
     git clone https://github.com/Tool2020/MHP
    cd MHP
    chmod +x webserver
    cp webserver /$PREFIX/bin/
  }
  read -p $'Choose Number::' key
  case $key in
    1)
      banner;;
    2)
      fb;;
    3)
      install;;
    4)
      start;;
    5)
    echo -e "\e[1;31m Bye Bye"
      exit;;
    *)
    echo "your input not string!"
      exit;;
  esac
