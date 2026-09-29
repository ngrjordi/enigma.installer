#!/bin/bash

clear
bi='\033[34;1m' #biru
i='\033[32;1m' #ijo
pur='\033[35;1m' #purple
cy='\033[36;1m' #cyan
me='\033[31;1m' #merah
pu='\033[37;1m' #putih
ku='\033[33;1m' #kuning

# Cek apakah core.py ada sebelum dieksekusi agar tidak error
if [ -f "core.py" ]; then
    python3 core.py
fi

echo -e ""
clear
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e $ku" |"$i"          ENIGMA INSTALLER           "$ku"|"
echo -e $ku" |"$me"─────────────────────────────────────────"$ku"|"
echo -e $ku" |"$me" PENULIS"$cy"   ~>"$pu" NGURAH JORDI                "$ku"|"
echo -e $ku" |"$me" INSTAGRAM"$cy" ~>"$pu" ngurahjordi                 "$ku"|"
echo -e $ku" |"$i"                                 ENJOY "$ku"|"
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e ""
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e $ku" |"$cy" 1"$me"."$cy"LALIN"$me"         {"$cy"Root"$me"}"$ku"                  |"
echo -e $ku" |"$cy" 2"$me"."$cy"LOCATOR"$ku"                               |"
echo -e $ku" |"$cy" 3"$me"."$cy"DARK-FB"$me"       {"$cy"Premium"$me"}"$ku"               |"
echo -e $ku" |"$cy" 4"$me"."$cy"BUG HUNTER"$ku"                            |"
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e $ku" |"$cy" 5"$me"."$cy"LITESCRIPT"$me"    {"$cy"Deface"$me"}"$ku"                |"
echo -e $ku" |"$cy" 6"$me"."$cy"METASPLOIT"$ku"                            |"
echo -e $ku" |"$cy" 7"$me"."$cy"FOLLOWER INSTAGRAM"$ku"                    |"
echo -e $ku" |"$cy" 8"$me"."$cy"SAVE FOTO & VIDEO INSTAGRAM"$ku"           |"
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e ""
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e $ku" |"$cy" I"$me"."$me"NSTALL BAHAN"$me" {"$cy"Full"$me"}"$ku"                    |"
echo -e $ku" |"$cy" E"$me"."$me"XIT"$ku"                                   |"
echo -e $ku"["$me"•"$ku"]"$ku"───────────────────────────────────────"$ku"["$me"•"$ku"]"
echo -e ""
echo -e $me"┌==="$me"["$cy"Pilih"$me"]"
echo -e $me"¦"
read -p "└──> " pilih

if [ "$pilih" = "1" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/Screetsec/LALIN.git
    cd LALIN || exit
    bash Lalin.sh

elif [ "$pilih" = "2" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/thelinuxchoice/locator.git
    cd locator || exit
    chmod +x *
    bash locator.sh

elif [ "$pilih" = "3" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/TheMagizz/DarkPremium
    cd DarkPremium || exit
    chmod +x *
    python2 DarkFB.py

elif [ "$pilih" = "4" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/thehackingsage/bughunter.git
    cd bughunter || exit
    chmod +x bughunter.py
    python2 bughunter.py

elif [ "$pilih" = "5" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/4L13199/LITESCRIPT
    cd LITESCRIPT || exit
    chmod +x *
    python2 LITESCRIPT.py

elif [ "$pilih" = "6" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/4L13199/meTAInstall
    cd meTAInstall || exit
    chmod +x *

elif [ "$pilih" = "7" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/ikiganteng/bot-igeh.git
    cd bot-igeh || exit
    unzip node_modules.zip
    node index.js

elif [ "$pilih" = "8" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    git clone https://github.com/wayangcode/instake
    cd instake || exit
    bash index.bash

elif [ "$pilih" = "I" ] || [ "$pilih" = "i" ]; then
    clear
    figlet -f slant "S E C . . ."|lolcat
    sleep 2
    pkg update && pkg upgrade -y
    # Tambahan: unzip, nodejs, dan python2 diperlukan oleh script di atas
    pkg install termux-tools git curl wget nano vim mc ruby php zsh nmap openssh unzip nodejs python2 -y
    pkg install python -y
    pkg install cowsay toilet figlet fastfetch -y
    gem install lolcat
    pip install mechanize requests colorama scapy
    figlet -f slant " D O N E "|lolcat

elif [ "$pilih" = "E" ] || [ "$pilih" = "e" ]; then
    clear
    figlet -f slant "E X I T"|lolcat
    sleep 3
    echo -e $me"Ada pertanyaan ? Just Direct Message I.G ngurahjordi"
    sleep 4
    figlet -f slant "MAKASI"|lolcat
    sleep 2

else
    echo -e $me"[!] Pilihan tidak valid, silakan jalankan ulang script."
fi
