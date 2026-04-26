#!/bin/bash

# AA-Store Data
cbimport json --format list --cluster "couchbases://cb.rhwrnfeq4p5xwn.cloud.couchbase.com" --username simple-retail --password "0xax5IgEyQ_K9Guk0r1+LUE2" --bucket "supermarket" --scope-collection-exp "AA-Store.inventory" --dataset 'file://./aa_store_inventory.json' --generate-key "%id%"
cbimport json --format list --cluster "couchbases://cb.rhwrnfeq4p5xwn.cloud.couchbase.com" --username simple-retail --password "0xax5IgEyQ_K9Guk0r1+LUE2" --bucket "supermarket" --scope-collection-exp "AA-Store.profile" --dataset 'file://./aa-store-01-profile.json' --generate-key "%id%"

# NYC-Store Data
cbimport json --format list --cluster "couchbases://cb.rhwrnfeq4p5xwn.cloud.couchbase.com" --username simple-retail --password "0xax5IgEyQ_K9Guk0r1+LUE2" --bucket "supermarket" --scope-collection-exp "NYC-Store.inventory" --dataset 'file://./nyc_store_inventory.json' --generate-key "%id%"
cbimport json --format list --cluster "couchbases://cb.rhwrnfeq4p5xwn.cloud.couchbase.com" --username simple-retail --password "0xax5IgEyQ_K9Guk0r1+LUE2" --bucket "supermarket" --scope-collection-exp "NYC-Store.profile" --dataset 'file://./nyc-store-01-profile.json' --generate-key "%id%"
