#!/bin/bash
CWD=$(pwd)
#<<<----------colour substitution by variables---------->>>
B0="$(printf '\033[100m')" S0="$(printf '\033[30m')"
B1="$(printf '\033[101m')" S1="$(printf '\033[31m')"
B2="$(printf '\033[102m')" S2="$(printf '\033[32m')"
B3="$(printf '\033[103m')" S3="$(printf '\033[33m')"
B4="$(printf '\033[104m')" S4="$(printf '\033[34m')"
B5="$(printf '\033[105m')" S5="$(printf '\033[35m')"
B6="$(printf '\033[106m')" S6="$(printf '\033[36m')"
B7="$(printf '\033[107m')" S7="$(printf '\033[37m')"
R1="$(printf '\033[0;1m')" R0="$(printf '\033[00m')"
#<<<-----------special colours----------->>>
T="$(printf '\033[5;1;32m')"
#<<<----------Variables declaration---------->>>
exit_on_signal_SIGINT () {
    echo "${S1} [✗] Received INTR call - Exiting...${R0}"
    exit 0
}
trap exit_on_signal_SIGINT SIGINT
#<<<----------PROGRAM---------->>>
#if [[ ! -f assets/rockyou.txt ]]; then
#unzip assets/rockyou.zip > /dev/null 2>&1
#mv -v *rockyou.txt assets/rockyou.txt > /dev/null 2>&1
#fi
__BANNER__() {
echo -e "
${S6}░█─░█ ─█▀▀█ ░█▀▀▀█ ░█─░█ ── ░█▀▀█ ░█▀▀█ ░█─░█ ▀▀█▀▀ ░█▀▀▀${R0}
${S2}░█▀▀█ ░█▄▄█ ─▀▀▀▄▄ ░█▀▀█ ▀▀ ░█▀▀▄ ░█▄▄▀ ░█─░█ ─░█── ░█▀▀▀${R0}
${S3}░█─░█ ░█─░█ ░█▄▄▄█ ░█─░█ ── ░█▄▄█ ░█─░█ ─▀▄▄▀ ─░█── ░█▄▄▄${R0}
"
printf "${B5}${S2}Authoured by:-${B5}${B3} Suman kumar ~BHUTUU${R0}${R1}\n"
echo
printf "${S2}<<<${S1}----------${B1}${S6}Welcome to hash bruting program${R0}${R1}${R1}----------${S2}>>>${R0}\n"
}

#<<<---------Program-function--------->>>
__BANNER__
echo
printf "${S3}Choose your mode from the following${S2}:-${R0}\n"
echo

printf "${B5}⟨01⟩.${B1} Auto | {use inbuilt dictonary}.${R1}\n"
echo
printf "${B5}⟨02⟩.${B1} Manual | {If you have your own dictonary}.${R1}\n"
echo
while true; do
printf "${S2}ENTER YOUR OPTION=> ${S7}"
read OPTON
case ${OPTON} in
    1|01)
PATH="rockyou.txt"
printf "${S2}Enter your any hash code :)==> "
read HASSH
hAsh=$(echo -e "$HASSH" | awk '{print length}')
break
;;
    2|02)

printf "${S2}Enter your any hash code :)==> "
read HASSH
hAsh=$(echo -e "$HASSH" | awk '{print length}')
printf "${S2}Enter (path/wordlist) :)==> "
read PATH
break
;;
     * )
printf "${S2}[${S1}!${S2}]${S1}Please select a valid option!!${R0}\n"
echo
;;
esac
done


case ${hAsh} in
    32)
            echo -e "

               ${S7} ███╗░░░███╗██████╗░███████╗${R0}
               ${S6} ████╗░████║██╔══██╗██╔════╝${R0}
               ${S2} ██╔████╔██║██║░░██║██████╗░${R0}
               ${S3} ██║╚██╔╝██║██║░░██║╚════██╗${R0}
               ${S1} ██║░╚═╝░██║██████╔╝██████╔╝${R0}
               ${S1} ╚═╝░░░░░╚═╝╚═════╝░╚═════╝░${B5}${S2}Bruteforce${R0}${R1}

            "
            sleep 1
            cd assets && ./md5brute.py -H ${HASSH} -P ${PATH}
            cd ..
;;
    40)
              echo -e "

               ${S7}░██████╗██╗░░██╗░█████╗░░░███╗░░${R0}
               ${S6}██╔════╝██║░░██║██╔══██╗░████║░░${R0}
               ${S2}╚█████╗░███████║███████║██╔██║░░${R0}
               ${S3}░╚═══██╗██╔══██║██╔══██║╚═╝██║░░${R0}
               ${S1}██████╔╝██║░░██║██║░░██║███████╗${R0}
               ${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝${B5}${S2}Bruteforce${R0}${R1}

             "
             sleep 1
             cd assets && ./sha1brute.py -H ${HASSH} -P ${PATH}
             cd ..
;;
    56)
              echo -e "

               ${S7}░██████╗██╗░░██╗░█████╗░██████╗░██████╗░░░██╗██╗${R0}
               ${S6}██╔════╝██║░░██║██╔══██╗╚════██╗╚════██╗░██╔╝██║${R0}
               ${S2}╚█████╗░███████║███████║░░███╔═╝░░███╔═╝██╔╝░██║${R0}
               ${S3}░╚═══██╗██╔══██║██╔══██║██╔══╝░░██╔══╝░░███████║${R0}
               ${S1}██████╔╝██║░░██║██║░░██║███████╗███████╗╚════██║${R0}
               ${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚══════╝░░░░░╚═╝${B5}${S2}Bruteforce${R0}${R1}

              "
              sleep 1
              cd assets && ./sha224brute.py -H ${HASSH} -P ${PATH}
              cd ..
;;
    64)
              echo -e "

               ${S7}░██████╗██╗░░██╗░█████╗░██████╗░███████╗░█████╗░${R0}
               ${S6}██╔════╝██║░░██║██╔══██╗╚════██╗██╔════╝██╔═══╝░${R0}
               ${S2}╚█████╗░███████║███████║░░███╔═╝██████╗░██████╗░${R0}
               ${S3}░╚═══██╗██╔══██║██╔══██║██╔══╝░░╚════██╗██╔══██╗${R0}
               ${S1}██████╔╝██║░░██║██║░░██║███████╗██████╔╝╚█████╔╝${R0}
               ${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═════╝░░╚════╝░${B5}${S2}Bruteforce${R0}${R1}

              "
              sleep 1
              cd assets && ./sha256brute.py -H ${HASSH} -P ${PATH}
              cd ..
;;
    96)
              echo -e "

               ${S7}░██████╗██╗░░██╗░█████╗░██████╗░░█████╗░░░██╗██╗${R0}
               ${S6}██╔════╝██║░░██║██╔══██╗╚════██╗██╔══██╗░██╔╝██║${R0}
               ${S2}╚█████╗░███████║███████║░█████╔╝╚█████╔╝██╔╝░██║${R0}
               ${S3}░╚═══██╗██╔══██║██╔══██║░╚═══██╗██╔══██╗███████║${R0}
               ${S1}██████╔╝██║░░██║██║░░██║██████╔╝╚█████╔╝╚════██║${R0}
               ${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░░╚════╝░░░░░░╚═╝${B5}${S2}Bruteforce${R0}${R1}
              "
              sleep 1
              cd assets && ./sha384brute.py -H ${HASSH} -P ${PATH}
              cd ..
;;
     128)
              echo -e "

               ${S7}░██████╗██╗░░██╗░█████╗░███████╗░░███╗░░██████╗░${R0}
               ${S6}██╔════╝██║░░██║██╔══██╗██╔════╝░████║░░╚════██╗${R0}
               ${S2}╚█████╗░███████║███████║██████╗░██╔██║░░░░███╔═╝${R0}
               ${S3}░╚═══██╗██╔══██║██╔══██║╚════██╗╚═╝██║░░██╔══╝░░${R0}
               ${S1}██████╔╝██║░░██║██║░░██║██████╔╝███████╗███████╗${R0}
               ${S1}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝╚══════╝${B5}${S2}Bruteforce${R0}${R1}

              "
              cd assets && ./sha512brute.py -H ${HASSH} -P ${PATH}
              cd ..

;;
   * )
printf "${S2}[${S1}!${S2}]${S1}SORRY BUT BRUTEFORCE FOR THIS TYPE OF CODE IS NOT AVAILABLE!!${R0}\n"

;;
esac
