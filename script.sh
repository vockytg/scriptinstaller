#!/bin/bash
clear
RED='\e[31m'
YELLOW='\e[33m'
RESET='\e[0m'
echo ""

echo -e "\e[31m██╗░░░██╗░█████╗░░█████╗░██╗░░██╗██╗░░░██╗\e[0m"
echo -e "\e[31m██║░░░██║██╔══██╗██╔══██╗██║░██╔╝╚██╗░██╔╝\e[0m"
echo -e "\e[31m╚██╗░██╔╝██║░░██║██║░░╚═╝█████═╝░░╚████╔╝░\e[0m"
echo -e "\e[31m░╚████╔╝░██║░░██║██║░░██╗██╔═██╗░░░╚██╔╝░░\e[0m"
echo -e "\e[31m░░╚██╔╝░░╚█████╔╝╚█████╔╝██║░╚██╗░░░██║░░░\e[0m"
echo -e "\e[31m░░░╚═╝░░░░╚════╝░░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░\e[0m"
echo ""
echo -e "${RED}Конфигурация сервера:${RESET}"
echo ""
echo -e "\e[31mIP:\e[0m ${YELLOW}$(hostname -I | awk '{print $1}')${RESET}"
echo -e "\e[31mRAM:\e[0m ${YELLOW}$(free -h | grep -E 'Mem:' | awk '{print $2}')${RESET}"
echo -e "\e[31mCPU:\e[0m ${YELLOW}$(lscpu | grep -E '^CPU\(s\):' | awk '{print $2}')${RESET}"
echo -e "\e[31mDisk:\e[0m ${YELLOW}$(lsblk -o NAME,SIZE | grep -E '^sda' | head -n 1 | awk '{print $2}')${RESET}"
echo ""
echo -e "${RED}1) Установить Dragon VPS Manager${RESET}"
echo -e "${RED}2) Установить Marzban${RESET}"
echo -e "${RED}3) Установить Yoru's Script${RESET}"
echo -e "${RED}4) Установить 3X-UI${RESET}"
echo -e "${RED}5) Установить Hiddify${RESET}"
echo -e "${RED}6) Установить X-UI${RESET}"
echo -e "${RED}7) Установить Benchmark script${RESET}"
echo -e "${RED}8) Установить SSH T PLUS${RESET}"
echo ""
read -p "$(echo -e "${RED}Выберите действие: ${RESET}")" choice

case $choice in
	1)
		apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/januda-ui/DRAGON-VPS-MANAGER/main/hehe; chmod 777 hehe;./hehe
		;;
	2)
		sudo bash -c "$(curl -sL https://github.com/Gozargah/Marzban-scripts/raw/master/marzban.sh)" @ install
		;;
	3)
		rm -f install* && wget -q https://raw.githubusercontent.com/excelsiorcode/websocket/master/install && chmod +x install && ./install
		;;
	4)
		bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
		;;
	5)
		bash <(curl i.hiddify.com/release)
		;;
	6)
		bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
		;;
	7)
		wget -qO- bench.sh | bash
		;;
	8)
		apt install wget -y; bash <(wget -qO- raw.githubusercontent.com/TelksBr/SSH_T_PROJECT_PLUS/main/ssh-plus)
		;;
esac
