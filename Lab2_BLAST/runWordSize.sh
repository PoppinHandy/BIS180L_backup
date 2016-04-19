#!/bin/bash

for word in 4 5 6 7 8
do
	echo "Doing word size $word"
	time blastp -db flypep_db/flypep -query P450 -word_size $word > "$word_word_size.blast"
done
