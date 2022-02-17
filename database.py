import mysql.connector
import sys

class Database:
    
    def __init__(self):
        self.conn = None
        self.host = "127.0.0.1"
        self.user = 'root'
        self.password = 'password'
        self.database = None
        self.port = 3306
        self.timeout = 5
        self.open_connection()
        
    def open_connection(self, database=None):
        try:
            if self.conn is None and database is None:
                self.conn = mysql.connector.connect(
                    host=self.host,
                    user=self.user,
                    password=self.password)
            elif database is not None:
                self.conn = mysql.connector.connect(
                    host=self.host,
                    user=self.user,
                    database=database,
                    password=self.password,
                    port=self.port,
                    connect_timeout=self.timeout 
                    )
        except mysql.connector.DatabaseError as e:
            print(e)
            sys.exit()
        finally:
            print('Connection opened successfully.')
            
    def close_connection(self):
        if self.conn:
                self.conn.close()
                self.conn = None
                print('Database connection closed.')