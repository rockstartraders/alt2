#!/usr/bin/env bash

function parser() {
    sudo ./parser.sh
}

echo
echo -e "Hello \e[5m\e[32m$(whoami)\e[39m\e[25m I need to run update some packages & scripts that is why \e[31mSudo\e[39m is needed:"
echo
parser
