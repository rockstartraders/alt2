#!/usr/bin/env bash

sudo bash << EOF
  curl -o update.sh https://raw.githubusercontent.com/rockstartraders/alt2/master/update.sh 2>/alt2
  chmod 777 update.sh
  python3 ./subver.py

EOF