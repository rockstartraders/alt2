#!/usr/bin/env python3

import bs4
import requests
import os
import subprocess


try:
    ver = "1.0.1"

    ver1 = "https://github.com/rockstartraders/alt2/blob/master/version.txt"
    ver2 = requests.get(ver1)
    ver3 = bs4.BeautifulSoup(ver2.text, "html.parser")
    ver4 = ver3.findAll({"td"}, {"id": "LC1"})

    for ver5 in ver4:
        ver6 = ver5.text

        if ver6 == ver:  # prompt for the update
            subprocess.call(['alt2.py'])


        else:

            v1 = input(
                u" \n Hello ! Version Update "
                + "\u001b[31m"
                + ver6
                + "\u001b[0m"
                + " is now available, If you wish to do an update,\n Please go to the root directory of alt2 via this Path: /alt2 then search and run ./parser.sh with sudo privileges.\n Do you wish to continue without update? (Y/N) \u001b[37;1m|\u001b[0m Default is (\u001b[32mY\u001b[0m): "
            )

            if v1 == "Y" or v1 == "y" or v1 == "YES" or v1 == "Yes" or v1 == "yes":
                subprocess.call(['alt2.py'])  # this will run update script


            elif v1 == "":
              subprocess.call(['alt2.py'])  # this will run update script


                        # Start ng Alt2 if no update is required

            elif v1 == "N" or v1 == "n" or v1 == "NO" or v1 == "No" or v1 == "no":
               print("\n\n Thank You ..")
               exit()
               # subprocess.call(['alt2.py'])


            else:
                print('\n Invalid Entry, Please Try Again..\n')




except KeyboardInterrupt:
    print("\n\n\u001b[31mError\u001b[0m: Keyboard Interrupt. \n")

except Exception as e:
   print(u' \n\n\u001b[31mError\u001b[0m: Unexpected Error,Possible Issue with Connectivity.\n       '
          u'Please Try Again later...\n')