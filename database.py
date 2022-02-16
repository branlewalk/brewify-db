import pymysql
import sys

class Database:
    
    def __init__(self):
        self.conn = None
        
    def init_app(self, app):
        self.host = "127.0.0.1"
        self.user = 'root'
        self.password = 'password'
        self.database = 'brewify_db'
        self.port = 3306
        self.timeout = 5
        
    def open_connection(self):
        try:
            if self.conn is None:
                self.conn = pymysql.connect(
                    host=self.host,
                    user=self.user,
                    passwd=self.password,
                    db=self.database,
                    port=self.port,
                    connect_timeout=self.timeout 
                    )
        except pymysql.MySQLError as e:
            print(e)
            sys.exit()
        finally:
            print('Connection opened successfully.')
            
    def close_connection(self):
        if self.conn:
                self.conn.close()
                self.conn = None
                print('Database connection closed.')