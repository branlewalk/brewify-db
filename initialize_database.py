import os
from database import Database
from load_data import load_all_data

db = Database()

def create_schema():
    cursor = db.conn.cursor()
    print('Creating Schema')
    with open('brewify_schema.sql') as file:
        sql = file.read()
        for result in cursor.execute(sql, multi=True):
            if result.with_rows:
                result.fetchall()
        print('Schema created')
    file.close()
    cursor.close()
    db.close_connection()

def create_store_procedures():
    db.open_connection('brewify_db')
    cursor = db.conn.cursor()
    print('Creating Stored Procedures')
    path = 'stored_procedures'
    files = os.listdir(path)
    for file in files:
        if os.path.isfile(os.path.join(path, file)):
            with open(os.path.join(path, file),'r') as f:
                sql = f.read()
                if sql:
                    for result in cursor.execute(sql, multi=True):
                        if result.with_rows:
                            result.fetchall()
                    print(f'Created {file}')
                else:
                    print(f'{file} was not created')                          
            f.close()
        
    print('Created all Stored Procedures')
    cursor.close()

def initialize_database():
    create_schema()
    create_store_procedures()
    #load_all_data()
    

initialize_database()
