import os
from database import Database
from load_data import load_all_data

db = Database()
cursor = db.conn.cursor

def create_schema():
    with open('brewify_schema.sql') as f:
        cursor.execute(f.read().decode('utf-8'), multi=True)
        
def create_store_procedures():
    path = '/stored_procedures/'
    files = os.listdir(path)
    for file in files:
        if os.path.isfile(os.path.join(path, file)):
            with open(os.path.join(path, file),'r') as f:
                cursor.execute(f.read().decode('utf-8'), multi=True)
            f.close()

def initialize_database():
    create_schema()
    create_store_procedures()
    load_all_data()
    

initialize_database()