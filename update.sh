#!/usr/bin/env bash

echo
echo -e "Hello \e[5m\e[32m$(whoami)\e[39m\e[25m I need to run update some packages & scripts that is why \e[31mSudo\e[39m is needed:"
sudo bash
echo ""
#cd ~ &&
#cd /alt2
echo "Configuring Files Please Wait ..."
sleep 2
echo "Update 1 of 3 "
curl -o alt2.py https://raw.githubusercontent.com/rockstartraders/alt2/master/alt2.py 2>/alt2
chmod 777 alt2.py
curl -o README.md https://raw.githubusercontent.com/rockstartraders/alt2/master/README.md 2>/alt2
curl -o initial.py https://raw.githubusercontent.com/rockstartraders/alt2/master/initial.py 2>/alt2
chmod 777 initial.py
sleep 3
echo "Update 2 of 3 "
curl -o pyvenv.cfg https://raw.githubusercontent.com/rockstartraders/alt2/master/pyvenv.cfg 2>/alt2
curl -o requirements.txt https://raw.githubusercontent.com/rockstartraders/alt2/master/requirements.txt 2>/alt2
curl -o version.txt https://raw.githubusercontent.com/rockstartraders/alt2/master/version.txt 2>/alt2
sleep 3
echo "Update 3 of 3 Done .. Cleaning up.. "
sh ./update_ext.sh



