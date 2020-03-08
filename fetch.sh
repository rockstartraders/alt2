#!/usr/bin/env bash

function changeD() {
   cd ~
   cd /alt2/

}

function fetcher() {

  svn export --force https://github.com/rockstartraders/alt2/trunk/update.sh > /dev/null && chmod 777 update.sh
}

changeD
