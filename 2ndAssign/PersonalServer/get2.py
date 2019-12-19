import csv
from elasticsearch import helpers, Elasticsearch
es = Elasticsearch()
with open('beginner_assignment01 - product_listing.csv') as f:    #opening CSV file
    r = csv.DictReader(f)
    helpers.bulk(es, r, index='product_listing')     #using helper from Bulk API to store data into "product_listing" index, document types have been depreceated from elasticsearch 7.0

