import sqlite3
try:
    connessione=sqlite3.connect('esempio.db')
    c=connessione.cursor()
    insert="""INSERT INTO amici(cognome, nome) VALUES ('Sbano',  'Carlo')"""
    count=c.execute(insert)
    connessione.commit()
    print(c.rowcount)
    c.close ()
except sqlite3.Error as error:
    print(error)
finally:
    if(connessione):
        connessione.close()
    print("La connessione è chiusa")
