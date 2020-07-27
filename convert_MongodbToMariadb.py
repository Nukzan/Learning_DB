from pymongo import MongoClient

client = MongoClient('mongodb://172.17.0.4:27017/')
mydb = client.mydb
board_info = mydb.board.find()

import pymysql

conn = pymysql.connect(host = '172.17.0.3', port = 3306, user = 'scott', passwd = 'tiger', db = 'yojulabdb', charset = 'utf8', autocommit = True)
cursor = conn.cursor()
query = 'INSERT INTO economic (title, link) Values (%s,%s)'
for info in board_info:
    if 'title' in info.keys():
        print(type(info), info['title'], info)
        title = info['title']
        link = info['likes']
        cursor.execute(query, (title, link))
conn.commit()
conn.close()