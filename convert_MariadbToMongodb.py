from pymongo import MongoClient
client = MongoClient('mongodb://172.17.0.4:27017/')
mydb = client.mydb

data = []

import sqlite3
conn = sqlite3.connect('db.sqlite3')
c = conn.cursor()

c.execute('SELECT * FROM economic')
rows = c.fetchall()

for row in rows:
    data.append({'released_date':row[0],'title':row[1],'link':row[2]})

scnd = mydb.economic.insert_many(data)
print('Data inserted...', scnd.inserted_ids)

eco_info = mydb.economic.find()
for info in eco_info:
    print(info)

client.close()
