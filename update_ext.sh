#!/usr/bin/env bash

echo
#echo -e "\e[5m\e[32m$(whoami)\e[39m\e[25m Finalizing Update and \e[31mSudo\e[39m is needed:"
sudo bash << EOF
  cd ~
  cd /alt2/
  curl -o update.sh https://raw.githubusercontent.com/rockstartraders/alt2/master/update.sh 2>/dev/null
  chmod 777 update.sh
  python3 ./subver.py

EOF