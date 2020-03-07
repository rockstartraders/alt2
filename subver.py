#!/usr/bin/env python3

import os
import subprocess
import svn.remote
import svn.local

x = os.getcwd()

print(x)

r = svn.remote.RemoteClient('https://github.com/rockstartraders/net2shell/trunk/image')
r.checkout(r,x)