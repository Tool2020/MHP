pass=max
admin=max
read -p $'\e[1;32madmin tool name::\e[0m' name
read -sp $'\e[1;32madmin tool password::\n' password
if [[ $pass == $password && $admin == $name ]];then
echo "Admin Username and Password Successful"
else
echo "Incorrect Admin Username and password"
exit
fi
echo -e '\e[1;34m Start Web Server....'
figlet web server
echo -e "\e[1;32m
(1)php
(2)apache2
(3)Ngrok
\e[0m"
read -p $'\e[1;36mselect number::\e[0m' id
case $id in
1)
php -S localhost:8080;;
2)
cd /data/data/com.termux/files/usr/share/apache2/default-site/htdocs
apachectl
;;
3)
./ngrok http 4444;;
*)
echo -e "\n\e[31m Incorrect not selected number\e[0m" ;;
esac
