import re
import pymysql as p

from .eng2sql import Eng2sql

db = p.connect("localhost","abc","test123","hotel" )
cursor = db.cursor()

def main():

    ques = input("Whats the Query \n")

    res = Eng2sql(
        database_path=  'database_store/hotel.sql',
        language_path=  'lang_store/english.csv',
    ).get_query(ques)
    print(type(res))
    try:
        #print("jdfd")
        cursor.execute(res)
        results = cursor.fetchall()
        print(results)

    except:
        print("Error: unable to fetch data")

if __name__ == '__main__':
    main()



    #return q
