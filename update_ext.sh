#!/usr/bin/env bash

echo
echo -e "\e[5m\e[32m$(whoami)\e[39m\e[25m Finalizing Update and \e[31mSudo\e[39m is needed:"
sudo bash << EOF
  curl -o update.sh https://raw.githubusercontent.com/rockstartraders/alt2/master/update.sh > /dev/null
  chmod 777 update.sh
  ./subver.py
  exit 0


EOF