import sqlite3
conn = sqlite3.connect('db.sqlite3')
c = conn.cursor()

c.execute('SELECT * FROM economic')
rows = c.fetchall()
print(rows[0][0])