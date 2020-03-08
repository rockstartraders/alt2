#!/usr/bin/env bash

function fetch() {
    sudo svn export --force https://github.com/rockstartraders/alt2/trunk/parser.sh > /dev/null && chmod 777 update.sh
}


function parser() {
    sudo ./parser.sh
}


echo
echo -e "Hello \e[5m\e[32m$(whoami)\e[39m\e[25m I need to run update some packages & scripts that is why \e[31mSudo\e[39m is needed:"
echo
fetch
parser
