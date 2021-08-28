#!/usr/bin/env bash
args="$@"
comand="start.sh ${args}"
if [[ $comand == 'start.sh -u' ]]; then
git pull
exit 1
fi
CWD=$(pwd)
#<<<-------------colors into variables------------->>>>
S0="\033[30m" B0="\033[40m"
S1="\033[31m" B1="\033[41m"
S2="\033[32m" B2="\033[42m"
S3="\033[33m" B3="\033[43m"
S4="\033[34m" B4="\033[44m"
S5="\033[35m" B5="\033[45m"
S6="\033[36m" B6="\033[46m"
S7="\033[37m" B7="\033[47m"
R0="\033[00m" R1="\033[0;1m"
#<<<---------Force exit detection--------->>>
exit_on_signal_SIGINT () {
    printf "\n${S1} [✗] Received INTR call - Exiting...${R0}\n"
    exit 0
}
trap exit_on_signal_SIGINT SIGINT
#<<<-----------BANNERS------------>>>
wait() {
sleep 0.1
}
_bmain() {
echo
printf "${S6}░█─░█ ─█▀▀█ ░█▀▀▀█ ░█─░█ ── ░█▀▀█ ░█▀▀█ ░█─░█ ▀▀█▀▀ ░█▀▀▀${R0}\n"; wait
printf "${S2}░█▀▀█ ░█▄▄█ ─▀▀▀▄▄ ░█▀▀█ ▀▀ ░█▀▀▄ ░█▄▄▀ ░█─░█ ─░█── ░█▀▀▀${R0}\n"; wait
printf "${S3}░█─░█ ░█─░█ ░█▄▄▄█ ░█─░█ ── ░█▄▄█ ░█─░█ ─▀▄▄▀ ─░█── ░█▄▄▄${R0}\n"; wait
echo
printf "${B5}${S2}Authoured by:-${B5}${B3}${S1} Suman kumar ~BHUTUU${R0}${R1}\n"; wait
echo
printf "${S2}<<<${S1}----------${B1}${S6}Welcome to hash bruting program${R0}${R1}${R1}${S1}----------${S2}>>>${R0}\n"; wait
}

_bmd5() {
printf "${S7} ███╗░░░███╗██████╗░███████╗${R0}\n"; wait
printf "${S6} ████╗░████║██╔══██╗██╔════╝${R0}\n"; wait
printf "${S2} ██╔████╔██║██║░░██║██████╗░${R0}\n"; wait
printf "${S3} ██║╚██╔╝██║██║░░██║╚════██╗${R0}\n"; wait
printf "${S1} ██║░╚═╝░██║██████╔╝██████╔╝${R0}\n"; wait
printf "${S1} ╚═╝░░░░░╚═╝╚═════╝░╚═════╝░${B5}${S2}Bruteforce${R0}${R1}\n"; wait
echo
}
_bsha1() {
printf "${S7}░██████╗██╗░░██╗░█████╗░░░███╗░░${R0}\n"; wait
printf "${S6}██╔════╝██║░░██║██╔══██╗░████║░░${R0}\n"; wait
printf "${S2}╚█████╗░███████║███████║██╔██║░░${R0}\n"; wait
printf "${S3}░╚═══██╗██╔══██║██╔══██║╚═╝██║░░${R0}\n"; wait
printf "${S1}██████╔╝██║░░██║██║░░██║███████╗${R0}\n"; wait
printf "${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝${B5}${S2}Bruteforce${R0}${R1}\n"; wait
echo
}
_bsha224() {
printf "${S7}░██████╗██╗░░██╗░█████╗░██████╗░██████╗░░░██╗██╗${R0}\n"; wait
printf "${S6}██╔════╝██║░░██║██╔══██╗╚════██╗╚════██╗░██╔╝██║${R0}\n"; wait
printf "${S2}╚█████╗░███████║███████║░░███╔═╝░░███╔═╝██╔╝░██║${R0}\n"; wait
printf "${S3}░╚═══██╗██╔══██║██╔══██║██╔══╝░░██╔══╝░░███████║${R0}\n"; wait
printf "${S1}██████╔╝██║░░██║██║░░██║███████╗███████╗╚════██║${R0}\n"; wait
printf "${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚══════╝░░░░░╚═╝${B5}${S2}Bruteforce${R0}${R1}\n"; wait
echo
}
_bsha256() {
printf "${S7}░██████╗██╗░░██╗░█████╗░██████╗░███████╗░█████╗░${R0}\n"; wait
printf "${S6}██╔════╝██║░░██║██╔══██╗╚════██╗██╔════╝██╔═══╝░${R0}\n"; wait
printf "${S2}╚█████╗░███████║███████║░░███╔═╝██████╗░██████╗░${R0}\n"; wait
printf "${S3}░╚═══██╗██╔══██║██╔══██║██╔══╝░░╚════██╗██╔══██╗${R0}\n"; wait
printf "${S1}██████╔╝██║░░██║██║░░██║███████╗██████╔╝╚█████╔╝${R0}\n"; wait
printf "${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═════╝░░╚════╝░${B5}${S2}Bruteforce${R0}${R1}\n"; wait
echo
}
_bsha384() {
printf "${S7}░██████╗██╗░░██╗░█████╗░██████╗░░█████╗░░░██╗██╗${R0}\n"; wait
printf "${S6}██╔════╝██║░░██║██╔══██╗╚════██╗██╔══██╗░██╔╝██║${R0}\n"; wait
printf "${S2}╚█████╗░███████║███████║░█████╔╝╚█████╔╝██╔╝░██║${R0}\n"; wait
printf "${S3}░╚═══██╗██╔══██║██╔══██║░╚═══██╗██╔══██╗███████║${R0}\n"; wait
printf "${S1}██████╔╝██║░░██║██║░░██║██████╔╝╚█████╔╝╚════██║${R0}\n"; wait
printf "${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░░╚════╝░░░░░░╚═╝${B5}${S2}Bruteforce${R0}${R1}\n"; wait
echo
}
_bsha512() {
printf "${S7}░██████╗██╗░░██╗░█████╗░███████╗░░███╗░░██████╗░${R0}\n"; wait
printf "${S6}██╔════╝██║░░██║██╔══██╗██╔════╝░████║░░╚════██╗${R0}\n"; wait
printf "${S2}╚█████╗░███████║███████║██████╗░██╔██║░░░░███╔═╝${R0}\n"; wait
printf "${S3}░╚═══██╗██╔══██║██╔══██║╚════██╗╚═╝██║░░██╔══╝░░${R0}\n"; wait
printf "${S1}██████╔╝██║░░██║██║░░██║██████╔╝███████╗███████╗${R0}\n"; wait
printf "${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝╚══════╝${B5}${S2}Bruteforce${R0}${R1}\n"; wait
echo
}
#<<<---------------Program--------------->>>
while true; do
_bmain
echo
printf "${S1}:::${S2}Choose your mode from the followings${S1}:::${R0}\n"
echo
printf "${S4}01. ${S3}Auto mode   | To use inbuilt dictonary${R0}\n"
printf "${S4}02. ${S3}Manual mode | To use external dictionary${R0}\n"
echo
while true; do
printf "${S3}Enter your option=> ${R0}"
read opt
if [[ -z "$opt" ]]; then
echo
printf "${S2}[${S1}!${S2}]${S1}Don't leave it empty! Choose any valid option!!${R0}\n"
echo
elif [[ ${opt} == '1' || ${opt} == '01' ]]; then
printf "${S2}Enter your hash code=> ${S1}"
read HASH
ha_s=$(printf "${HASH}" | awk '{print length}')
dict="${CWD}/assets/rockyou.txt"
break
elif [[ ${opt} == '2' || ${opt} == '02' ]]; then
printf "${S2}Enter your hash code=> ${S1}"
read HASH
ha_s=$(printf "${HASH}" | awk '{print length}')
echo
printf "${S2}Attach your dictonary${S5}(${S7}path/name${S5})${S2}=> ${S1}"
read dict
break
elif [[ ${opt} == 'exit' || ${opt} == 'quit' ]]; then
printf "${S5}Exiting.......${R0}\n\n"
exit 1
else
echo
printf "${S2}[${S1}!${S2}]${S1} Invalid option!!${R0}\n"
echo
fi
done
#<<<+++++++Lets call bruteforcing scripts from our assets library++++++>>>
case "${ha_s}" in
32)
_bmd5
sleep 1
./assets/md5brute.py -H ${HASH} -P ${dict}
;;
40)
_bsha1
sleep 1
./assets/sha1brute.py -H ${HASH} -P ${dict}
;;
56)
_bsha224
sleep 1
./assets/sha224brute.py -H ${HASH} -P ${dict}
;;
64)
_bsha256
sleep 1
./assets/sha256brute.py -H ${HASH} -P ${dict}
;;
96)
_bsha384
sleep 1
./assets/sha384brute.py -H ${HASH} -P ${dict}
;;
128)
_bsha512
sleep 1
./assets/sha512brute.py -H ${HASH} -P ${dict}
;;
*)
echo
printf "${S2}[${S1}!${S2}]${S1}Sorry! Bruteforce for this type of code is unavailable${R0}\n"
echo
esac
done
