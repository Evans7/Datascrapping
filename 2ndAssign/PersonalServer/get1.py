import csv
from elasticsearch import helpers, Elasticsearch
es = Elasticsearch()
with open('beginner_assignment01 - group_listing.csv') as f: #using the csv file to read data
    r = csv.DictReader(f)    
    helpers.bulk(es, r, index='product')      #using helper from Bulk API to store data into "product" index, document types have been depreceated from elasticsearch 7.0

