import pymysql

# 데이터 베이스 접속
def get_connection():
    conn = pymysql.connect( host    ='localhost',   
                            user    ='root',        
                            password='12341234',
                            db      ='pusan_board_db',
                            charset ='utf8mb4',
                            cursorclass=pymysql.cursors.DictCursor
                        )
    return conn