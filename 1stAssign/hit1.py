#This if for importing the group doc first
import csv    #importing of CSV and MySQL modules
import MySQLdb

#connection to my mySQL server
mydb = MySQLdb.connect(host='localhost',
    user='root',
    passwd='password',
    db='product')
#curor pointer to point to each row in csv file
cursor = mydb.cursor() 

csv_data = csv.reader(open('C:/Users/Anoop/Downloads/beginner_assignment01 - group_listing.csv'))
next(csv_data)
for row in csv_data:
#Inserting into database using SQL query
    cursor.execute('INSERT INTO group1(group_name,group_description,isActive) VALUES("%s", "%s", "%s")', row)
#close the connection to the database.
mydb.commit()  #commit after done
cursor.close()
print("Done")
