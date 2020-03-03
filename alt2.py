#!/usr/bin/env python3

import bs4
import requests
from fake_useragent import UserAgent
import pyfiglet
import readline
import subprocess


# Update line script
try:
    ver = "1.0.0"

    ver1 = "https://github.com/rockstartraders/alt2/blob/master/version.txt"
    ver2 = requests.get(ver1)
    ver3 = bs4.BeautifulSoup(ver2.text, "html.parser")
    ver4 = ver3.findAll({"td"}, {"id": "LC1"})

    for ver5 in ver4:
        ver6 = ver5.text

        if ver6 != ver:  # prompt for the update
            v1 = input(
                u" \n Hello ! Version Update "
                + "\u001b[31m"
                + ver6
                + "\u001b[0m"
                + " is now available, \n Do you wish to do an update? (Y/N) \u001b[37;1m|\u001b[0m Default is (\u001b[32mY\u001b[0m): "
            )


            if v1 == "Y" or v1 == "y" or v1 == "YES" or v1 == "yes":
                print(" Thank You ha.")
                subprocess.call(['./update.sh']) # this will run update script

            elif v1 == "":
                print(" Thank You ha.")
                subprocess.call(['./update.sh'])  # this will run update script

                # Start ng Alt2 if no update is required

            else:

                # Useragent

                ua = UserAgent().random
                prox = {"User-Agent": ua}

                # border and banner
                print()
                zz = pyfiglet.figlet_format("alt2", font="block", justify="center")
                print(u"\u001b[32;1m" + zz + "\u001b[0m")
                zz1 = "A Software Alternative Finder".center(78)
                print(zz1)
                print(
                    u"\u25A0"
                    + "\u2550" * 15
                    + "\u25A0"
                    + "  By: \u001b[32mhttps://github.com/rockstartraders\u001b[0m "
                    + "\u25A0"
                    + "\u2550" * 15
                    + "\u25A0"
                    + "\n"
                )

                # Input

                lagay = input("Enter The Application Name: ")
                lagay1 = lagay.replace(" ", "-")
                lagay2 = lagay1.strip().title()

                # Variable

                una = "https://alternativeto.net/software/"
                dalawa = "/?license=opensource&platform=linux"

                # soup
                tatlo = requests.get(una + lagay2 + dalawa, headers=prox)
                soup = bs4.BeautifulSoup(tatlo.text, "html.parser")

                # Resultset
                x1 = soup.find_next({"span"}, {"class": "lead"})
                x2 = soup.findAll({"h3", "a"}, {"data-link-action": "Alternatives"})
                xb = soup.h1

                aaa = soup.select("p.lead")
                a = tatlo.status_code
                b = str(a)  # converted value to string

                # Sopas for 404
                three = "https://alternativeto.net/browse/search?q="
                four = "&ignoreExactMatch=true"
                tatlo2 = requests.get(three + lagay2 + four, headers=prox)
                sopas = bs4.BeautifulSoup(tatlo2.text, "html.parser")
                a1 = sopas.findAll({"a"}, {"data-link-action": "Search"})

                # condition para error
                if b == "404":
                    print(
                        u"\nOoopsss... Unable to find  "
                        + "\u001b[31;1m"
                        + lagay
                        + "\u001b[0m"
                        + " !!\n"
                        + "You may want to refine your search...\n\n"
                        + "Here are some \u001b[32;1mSuggestions\u001b[0m for you: \n"
                    )
                    for ab in a1:
                        # output
                        print(ab.text.replace("\n", ""))  # make it intact

                else:  # output if working
                    for a4 in aaa:  # mamaya
                        print(a4.text)

                    print(
                        u"Here are some \u001b[32;1mLinux\u001b[0m Alternatives to "
                        + "\u001b[31;1m"
                        + lagay.upper()
                        + "\u001b[0m"
                        + " :\n"
                    )

                    for x3 in x2:
                        print(x3.text)  # This is the result if 404 passed !!


except KeyboardInterrupt:
    print("\n\n\u001b[31mError\u001b[0m: KeyboardInterrupt \n")
