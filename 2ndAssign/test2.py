import csv
from elasticsearch import helpers, Elasticsearch
es = Elasticsearch(['http://101.53.136.181:9200/'])
with open('beginner_assignment01 - product_listing.csv') as f: #using the csv file to read data
    r = csv.DictReader(f)    
    helpers.bulk(es, r, index='product2',doc_type='product_listing122')      #using helper from Bulk API to store data into "product2" index
    print("done")
