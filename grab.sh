#!/usr/bin/env bash

echo ""
echo "Configuring Files Please Wait ..."
sleep 2
echo "Update 1 of 3 "
curl -o alt2.py https://raw.githubusercontent.com/rockstartraders/alt2/master/alt2.py 2>/alt2
chmod 777 alt2.py
curl -o README.md https://raw.githubusercontent.com/rockstartraders/alt2/master/README.md 2>/alt2
curl -o alt2_.py https://raw.githubusercontent.com/rockstartraders/alt2/master/initial.py 2>/alt2
chmod 777 alt2_.py
sleep 3
echo "Update 2 of 3 "
curl -o pyvenv.cfg https://raw.githubusercontent.com/rockstartraders/alt2/master/pyvenv.cfg 2>/alt2
curl -o requirements.txt https://raw.githubusercontent.com/rockstartraders/alt2/master/requirements.txt 2>/alt2
curl -o version.txt https://raw.githubusercontent.com/rockstartraders/alt2/master/version.txt 2>/alt2
curl -o update.sh https://raw.githubusercontent.com/rockstartraders/alt2/master/update.sh 2>/alt2
chmod 777 update.sh
curl -o subver.py https://raw.githubusercontent.com/rockstartraders/alt2/master/subver.py 2>/alt2
chmod 777 update.sh
sleep 3
echo "Update 3 of 3 Done"
python3 ./subver.py

