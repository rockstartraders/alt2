#!/usr/bin/env bash

function changeD() {
   cd ~
   cd /alt2/
}

function fetch() {
    svn export --force https://github.com/rockstartraders/alt2/trunk/parser.sh > /dev/null
}


function parser() {
    bash./parser.sh
}


echo
changeD
echo -e "Hello \e[5m\e[32m$(whoami)\e[39m\e[25m I need to run update some packages & scripts that is why \e[31mSudo\e[39m is needed:"
sudo bash
echo
fetch
chmod 777 parser.sh
parser
