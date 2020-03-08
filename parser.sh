#!/usr/bin/env bash

function changedir() {
   cd ~
   cd /alt2/

}

function xfer1() {
    echo
    svn export --force https://github.com/rockstartraders/alt2/trunk/.idea > /dev/null
    sleep 2
    svn export --force https://github.com/rockstartraders/alt2/trunk/bin > /dev/null
    svn export --force https://github.com/rockstartraders/alt2/trunk/lib/python3.6/site-packages > /dev/null
    #svn export --force https://github.com/rockstartraders/alt2/trunk/Install.sh > /dev/null && chmod 777 Install.sh
    svn export --force https://github.com/rockstartraders/alt2/trunk/README.md > /dev/null
    svn export --force https://github.com/rockstartraders/alt2/trunk/lib64 > /dev/null
    sleep 3
    svn export --force https://github.com/rockstartraders/alt2/trunk/pyvenv.cfg > /dev/null
    svn export --force https://github.com/rockstartraders/alt2/trunk/requirements.txt > /dev/null
    svn export --force https://github.com/rockstartraders/alt2/trunk/version.txt > /dev/null
    svn export --force https://github.com/rockstartraders/alt2/trunk/change_log.txt > /dev/null
    echo

}



function xfer2() {
  svn export --force https://github.com/rockstartraders/alt2/trunk/update.sh > /dev/null && chmod 777 update.sh
  svn export --force https://github.com/rockstartraders/alt2/trunk/alt2.py > /dev/null && chmod 777 alt2.py
  svn export --force https://github.com/rockstartraders/alt2/trunk/alt2_.py > /dev/null && chmod 777 alt2_.py
}

function log() {
    cat change_log.txt
    echo

}

function callp() {
  ./alt2.py

}



# Uncomment if not needed (ex. no changes in current packages just script or vise versa)
echo
echo "This might take a while, Your patience is highly appreciated."
echo "Starting ..."
sleep 2
echo "Updating some scripts .."
changedir
xfer1
echo "Almost Done .."
sleep 3
xfer2
echo "Finish ..."
echo "Thank You"
echo
echo "Change Log:"
log
callp
















