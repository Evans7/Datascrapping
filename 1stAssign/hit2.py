#This is for scraping the product document later as it relies on group doc
import csv     #importing of CSV and MySQL modules
import MySQLdb

#connection to my mySQL server
mydb = MySQLdb.connect(host='localhost',
    user='root',
    passwd='password',
    db='product')
#curor pointer to point to each row in csv file
cursor = mydb.cursor()

csv_data = csv.reader(open('C:/Users/Anoop/Downloads/beginner_assignment01 - product_listing.csv'))
next(csv_data)
for row in csv_data:
      cursor.execute('INSERT INTO product1(product_name, \
          model_name, product_serial_no, group_associated, product_MRP )' \
          'VALUES("%s", "%s", "%s", "%s", "%s")', 
          row)
          #Inserting into database using SQL query
      
#close the connection to the database.
mydb.commit()     #commit after done
cursor.close()   
print("Done")
