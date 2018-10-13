#!/bin/bash

grep  "^widget-wysiwyg" html_geral_dic | sed 's/<h4 style="margin-left: 18pt; ">/\n&/g' > separa_termos_html 
cat separa_termos_html | sed 's/<h4 .*verdana,geneva,sans-serif;">//g' | sed 's/<\/strong>//g' | sed 's/<\/h4>//g' | sed 's/<strong>//g' | sed 's/&nbsp;//g' | sed 's/<\/[a-z]*>//g' | sed -e 's/<[^>]*>//g' | sed 's/<div class=\"//g' | sed 's/widget-wysiwyg\">//g' | sed 's/			/\n/g'  | sed '/^$/d' |  awk 'NF>0' | sort > dicionario
