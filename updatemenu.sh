#wget https://github.com/${GitUser}/
GitUser="maruX1922"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v4/main/version )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/v4/main/newversion | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo ""
                                                           
figlet 'UPDATE'
                                                           
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$back_text                 \e[30m[\e[$box CHECK NEW UPDATE\e[30m ]                   \e[m"
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$below VERSION NOW >> $Info1"
echo -e "   \e[$below STATUS UPDATE >> $sts"
echo -e ""
echo -e "       \e[1;31mWould you like to proceed?\e[0m"
echo ""
echo -e "            \e[0;32m[ Select Option ]\033[0m"
echo -e "     \e[$number [ 1 ]\e[m \e[$below Check Script Update Now\e[m"
echo -e "     \e[$number [ x ]\e[m \e[$below Back To Menu\e[m"
echo -e ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "\e[$line"

version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/v4/main/newversion | grep $version )
if [ $version = $new_version ]; then
clear
echo ""
echo -e "\e[1;31mChecking New Version, Please Wait...!\e[m"
sleep 3
clear
echo -e "\e[1;31mUpdate Not Available\e[m"
echo ""
clear
sleep 1
echo -e "\e[1;36mYou Have The Latest Version\e[m"
echo -e "\e[1;31mThankyou.\e[0m"
sleep 2
update
fi
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/${GitUser}/v4/main/updatemenu.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
# menu
wget -q -O menu "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu.sh"
wget -q -O menu-vmess "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-vmess.sh"
wget -q -O menu-vless "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-vless.sh"
wget -q -O running "https://raw.githubusercontent.com/maruX1922/v4/main/menu/running.sh"
wget -q -O clearcache "https://raw.githubusercontent.com/maruX1922/v4/main/menu/clearcache.sh"
wget -q -O menu-trgo "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-trgo.sh"
wget -q -O menu-trojan "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-trojan.sh"

# menu ssh ovpn
wget -q -O menu-ssh "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-ssh.sh"
wget -q -O usernew "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/usernew.sh"
wget -q -O trial "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/trial.sh"
wget -q -O renew "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/renew.sh"
wget -q -O hapus "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/hapus.sh"
wget -q -O cek "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/cek.sh"
wget -q -O member "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/member.sh"
wget -q -O delete "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/delete.sh"
wget -q -O autokill "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/autokill.sh"
wget -q -O ceklim "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/ceklim.sh"
wget -q -O tendang "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/tendang.sh"

# menu system
wget -q -O menu-set "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-set.sh"
wget -q -O menu-domain "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-domain.sh"
wget -q -O add-host "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/add-host.sh"
wget -q -O port-change "https://raw.githubusercontent.com/maruX1922/v4/main/port/port-change.sh"
wget -q -O certv2ray "https://raw.githubusercontent.com/maruX1922/v4/main/xray/certv2ray.sh"
wget -q -O menu-webmin "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-webmin.sh"
wget -q -O speedtest "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/speedtest_cli.py"
wget -q -O about "https://raw.githubusercontent.com/maruX1922/v4/main/menu/about.sh"
wget -q -O auto-reboot "https://raw.githubusercontent.com/maruX1922/v4/main/menu/auto-reboot.sh"
wget -q -O restart "https://raw.githubusercontent.com/maruX1922/v4/main/menu/restart.sh"
wget -q -O bw "https://raw.githubusercontent.com/maruX1922/v4/main/menu/bw.sh"
# backup
wget -q -O menu-backup "https://raw.githubusercontent.com/maruX1922/v4/main/backup/menu-backup.sh"
wget -q -O backup "https://raw.githubusercontent.com/maruX1922/v4/main/backup/backup.sh"
wget -q -O restore "https://raw.githubusercontent.com/maruX1922/v4/main/backup/restore.sh"
wget -q -O set-br "https://raw.githubusercontent.com/maruX1922/v4/main/backup/set-br.sh"
# change port
wget -q -O port-ssl "https://raw.githubusercontent.com/maruX1922/v4/main/port/port-ssl.sh"
wget -q -O port-q -Ovpn "https://raw.githubusercontent.com/maruX1922/v4/main/port/port-q -Ovpn.sh"

wget -q -O xp "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/xp.sh"
wget -q -O acs-set "https://raw.githubusercontent.com/maruX1922/v4/main/acs-set.sh"

wget -q -O sshws "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/sshws.sh"

chmod +x menu
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
#backup
chmod +x menu-backup
chmod +x backup
chmod +x restore
chmod +x set-br
#ssh
chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x renew
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokill
chmod +x ceklim
chmod +x tendang
chmod +x updatemenu

chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw

chmod +x port-ssl
chmod +x port-q -Ovpn

chmod +x xp
chmod +x acs-set
chmod +x sshws
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v4/main/version )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f updatemenu.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
