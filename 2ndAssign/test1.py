import csv
from elasticsearch import helpers, Elasticsearch
es = Elasticsearch(['http://101.53.136.181:9200/'])
with open('beginner_assignment01 - group_listing.csv') as f: #using the csv file to read data
    r = csv.DictReader(f)    
    helpers.bulk(es, r, index='product',doc_type='group_listing')      #using helper from Bulk API to store data into "product" index
    print("done")
