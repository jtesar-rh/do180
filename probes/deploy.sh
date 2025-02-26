#!/bin/bash
ls *.yaml | xargs -n1 oc create -f 
oc set volumes deployment server --add --name data --claim-name data --mount-path=/var/www/html
oc set volumes deployment ctrl --add --name data --claim-name data --mount-path=/var/www/html
