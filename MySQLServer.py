import mysql.connector 

try:
    mydb = mysql.connector.connect(
        host = '127.0.0.1',
        port = '3306',
        user = 'root',
        password = 'Root00root',
        database = 'alx_book_store',
    )
    if mydb.is_connected():
        #run a test
        print('DATABASE AlX_STORE_STORE WORK SUCCESSFULLY!')
    else:

        #EXECUTE COMMAND TO DB
        cursor = mydb.cursor()
        cursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store')


except mysql.connector.Error as err :
    print("Something went wrong: {}".format(err))