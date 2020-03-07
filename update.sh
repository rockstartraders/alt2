#!/usr/bin/env bash

echo
echo -e "Hello \e[5m\e[32m$(whoami)\e[39m\e[25m I need to run update some packages & scripts that is why \e[31mSudo\e[39m is needed:"
sudo bash << EOF
  echo ""
  echo "Configuring Files Please Wait ..."
  sleep 2
  echo "Update 1 of 3 "
  curl -o alt2.py https://raw.githubusercontent.com/rockstartraders/alt2/master/alt2.py > /dev/null
  chmod 777 alt2.py
  curl -o README.md https://raw.githubusercontent.com/rockstartraders/alt2/master/README.md > /dev/null
  curl -o initial.py https://raw.githubusercontent.com/rockstartraders/alt2/master/initial.py > /dev/null
  chmod 777 initial.py
  sleep 3
  echo "Update 2 of 3 "
  curl -o pyvenv.cfg https://raw.githubusercontent.com/rockstartraders/alt2/master/pyvenv.cfg > /dev/null
  curl -o requirements.txt https://raw.githubusercontent.com/rockstartraders/alt2/master/requirements.txt > /dev/null
  curl -o version.txt https://raw.githubusercontent.com/rockstartraders/alt2/master/version.txt > /dev/null
  rm -rf /bin/alt2
  cp -p initial.py /bin/alt2
  echo "Update 2 of 3 "
  echo "Update 3 of 3 Done .. Cleaning up.. "
  ./update_ext.sh
  exit 0


EOF


