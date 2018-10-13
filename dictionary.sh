#!/bin/bash

sed  's/\t/\n/g' dicionario | sed  's/\t//g' | sed '/^$/d' |  awk 'NF>0' | sort > dic
sed 's/^ *//g' dic | sed 's/;/,/g' | sed 's/ /;/1' | grep ";" | sed 's/;–/;/g' |  sed 's/; /;/g' | grep -v "&amp,X" | sed 's/;/; "/g' | sed 's/$/"&/g' > dicionario2.csv
