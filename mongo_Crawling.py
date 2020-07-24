# get data from crawling

import requests
from bs4 import BeautifulSoup
import sqlite3
import re

res = requests.get('http://media.daum.net/economic/')

soup = BeautifulSoup(res.content, 'html.parser')
html = soup.find_all('a', class_ = 'link_txt', href = re.compile('http[s]?\:\/'))

data =[]

for line in html :
      title = str.strip(line.get_text())
      link  = line.get('href')
      artcl = requests.get(link)
      a_soup = BeautifulSoup(artcl.content, 'html.parser')
      contents = a_soup.find_all('p')
      sources = a_soup.find_all('img', class_ = 'thumb_g')
      content = []
      source = []
      for w in contents:
        content.append(str.strip(w.get_text()))
      for i in sources:
        source = i.get('alt')
      data.append({'제목': title, '링크': link, '출처':source,'상세':content})

data


# make mongoDB

from pymongo import MongoClient
client = MongoClient('mongodb://172.17.0.4:27017/')
mydb = client.mydb
makeCollection = mydb.daum.insert_many(data)
daum_info = mydb.makeCollection.find()
for info in daum_info:
    print(info)

client.close()