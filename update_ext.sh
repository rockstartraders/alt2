#!/usr/bin/env bash

sudo bash << EOF
  cd ~
  cd /alt2/
  curl -o update.sh https://raw.githubusercontent.com/rockstartraders/alt2/master/update.sh 2>/dev/null
  chmod 777 update.sh
  python3 ./subver.py

EOF