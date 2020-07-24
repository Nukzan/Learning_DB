from pymongo import MongoClient
client = MongoClient('mongodb://172.17.0.4:27017/')
mydb = client.mydb

data = {'title' : 'mongoDB보기', 'tags' : ['디비 서비스']}
first = mydb.board.insert_one(data)

data2 = [ {'name':'Ram', 'age':'26', 'city':'Hyderabad'},
        {'name':'Raihama', 'age':'27','city':'Bangalore'}]
scnd = mydb.board.insert_many(data2)
print('Data inserted...', scnd.inserted_ids)

board_info = mydb.board.find()
for info in board_info:
    print(info)

client.close()
