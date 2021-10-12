#!/bin/bash
echo "updating"
sudo apt update -y 
echo "full-upgrading"
sudo apt full-upgrade -y
echo "removing excess packages"
sudo apt autoremove -y
echo "cleaning"
sudo apt autoclean -y

echo "installing packages"
sudo apt install netcat ncat nmap wireshark tcpdump hashcat ffuf gobuster hydra zaproxy proxychains sqlmap radare2 metasploit-framework python2.7 python3 spiderfoot theharvester remmina xfreerdp rdesktop crackmapexec exiftool curl seclists testssl.sh git vim tmux -y

echo "installing priviledge escalation"
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git

echo "adding terminal customisation"
echo 'export PS1="-[\[$(tput sgr0)\]\[\033[38;5;10m\]\d\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;10m\]\t\[$(tput sgr0)\]]-[\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;196m\]\h\[$(tput sgr0)\]]-\n-[\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"' >> ~/.bashrc
