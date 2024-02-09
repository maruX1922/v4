clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    wget https://raw.githubusercontent.com/maruX1922/v4/main/updatemenu.sh
    cd /usr/local/sbin  
	#cd /usr/bin	
    rm -rf updatemenu.sh
    
}

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

netfilter-persistent
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e " \e[1;97;101m            UPDATE SCRIPT               \e[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
echo -e "  \033[1;91m Update Script Service\033[1;37m"
fun_bar 'res1'
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
