#!/usr/bin/env python3

import bs4
import requests
import sys
from random import choice
from fake_useragent import UserAgent


# Useragent

ua = UserAgent().random
prox = {
'User-Agent': ua
}




# Input

lagay = input('Enter The Application Name: ')
lagay1 = lagay.replace(" ", "-")
lagay2 = lagay1.strip()




# Variable

una = 'https://alternativeto.net/software/'
dalawa = '/?license=opensource&platform=linux'




# soup
tatlo = requests.get(una + lagay2 + dalawa, headers=prox)

soup = bs4.BeautifulSoup(tatlo.text, "html.parser")


#Resultset
x1 = soup.find_next({'span'} , {'class' : "lead"})
x2 = soup.findAll({'h3', 'a'} , {'data-link-action': "Alternatives" })
xb = soup.h1

aaa = soup.select('p.lead')
a = tatlo.status_code
b = str(a)  # converted value to string

# Sopas for 404
three = 'https://alternativeto.net/browse/search?q='
four = '&ignoreExactMatch=true'
tatlo2 = requests.get(three + lagay2 + four, headers=prox)
sopas = bs4.BeautifulSoup(tatlo2.text, "html.parser")
a1 = sopas.findAll({'a'}, {'data-link-action': "Search"})



   # condition para error
if b =="404":
    print(u"\nOoopsss... Unable to find  " + "\u001b[31;1m"+ lagay + "\u001b[0m" +" !!\n" + "You may want to refine your search...\n\n" + "Here are some \u001b[32;1mSuggestions\u001b[0m for you: \n")
    for ab in a1:
        #output
        print(ab.text.replace('\n', ''))  # make it intact


else:   # output if working
    for a4 in aaa:   #mamaya
      print(a4.text)

    print(u"Here are some \u001b[32;1mLinux\u001b[0m Alternatives: \n")


    for x3 in x2:
       print(x3.text) # This is the result if 404 passed !!










