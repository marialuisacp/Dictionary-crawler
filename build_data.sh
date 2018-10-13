#!/bin/bash

for l in a b c d e f g h i j k l m n o p q r s t u v w x y z
do 
	cat data/letra-$l/index.html
	| sed ':a;N;s/\n//g;ta'
	| sed 's/widget-wysiwyg/\n&/g'
	| sed 's/widget-footer/\n&/g'
done