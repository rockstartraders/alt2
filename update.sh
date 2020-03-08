#!/usr/bin/env bash

function changeD() {
   cd ~
   cd /alt2/
}

function fetch() {
    sudo svn export --force https://github.com/rockstartraders/alt2/trunk/parser.sh > /dev/null && chmod 777 parser.sh
}


function parser() {
    sh ./parser.sh
}


echo
changeD
echo -e "Hello \e[5m\e[32m$(whoami)\e[39m\e[25m I need to run update some packages & scripts that is why \e[31mSudo\e[39m is needed:"
echo
fetch
parser
