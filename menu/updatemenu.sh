#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com);
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
rm -rf menu-trgo
rm -rf menu-trojan
rm -rf menu-ssh
rm -rf menu-backup
rm -rf updatemenu
wget -O updatemenu "https://raw.githubusercontent.com/maruX1922/v4/main/menu/updatemenu.sh"
wget -O menu "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-vmess.sh"
wget -O menu-vless "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-vless.sh"
wget -O running "https://raw.githubusercontent.com/maruX1922/v4/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/maruX1922/v4/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-trgo.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-trojan.sh"

# menu ssh ovpn
wget -O menu-ssh "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-ssh.sh"
wget -O usernew "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/cek.sh"
wget -O member "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/delete.sh"
wget -O autokill "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/tendang.sh"

# menu system
wget -O menu-set "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-set.sh"
wget -O menu-domain "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/add-host.sh"
wget -O port-change "https://raw.githubusercontent.com/maruX1922/v4/main/port/port-change.sh"
wget -O certv2ray "https://raw.githubusercontent.com/maruX1922/v4/main/xray/certv2ray.sh"
wget -O menu-webmin "https://raw.githubusercontent.com/maruX1922/v4/main/menu/menu-webmin.sh"
wget -O speedtest "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/speedtest_cli.py"
wget -O about "https://raw.githubusercontent.com/maruX1922/v4/main/menu/about.sh"
wget -O auto-reboot "https://raw.githubusercontent.com/maruX1922/v4/main/menu/auto-reboot.sh"
wget -O restart "https://raw.githubusercontent.com/maruX1922/v4/main/menu/restart.sh"
wget -O bw "https://raw.githubusercontent.com/maruX1922/v4/main/menu/bw.sh"
# backup
wget -O menu-backup "https://raw.githubusercontent.com/maruX1922/v4/main/backup/menu-backup.sh"
wget -O backup "https://raw.githubusercontent.com/maruX1922/v4/main/backup/backup.sh"
wget -O restore "https://raw.githubusercontent.com/maruX1922/v4/main/backup/restore.sh"
wget -O set-br "https://raw.githubusercontent.com/maruX1922/v4/main/backup/set-br.sh"
# change port
wget -O port-ssl "https://raw.githubusercontent.com/maruX1922/v4/main/port/port-ssl.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/maruX1922/v4/main/port/port-ovpn.sh"

wget -O xp "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/xp.sh"
wget -O acs-set "https://raw.githubusercontent.com/maruX1922/v4/main/acs-set.sh"

wget -O sshws "https://raw.githubusercontent.com/maruX1922/v4/main/ssh/sshws.sh"

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
chmod +x port-ovpn

chmod +x xp
chmod +x acs-set
chmod +x sshws
}

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
