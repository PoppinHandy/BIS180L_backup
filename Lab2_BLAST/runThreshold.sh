#!/bin/bash

for T in 10 11 12 13 14 15
    do
        echo "Starting blastp with threshold ${T}"
        time blastp -db  flypep_db/flypep -query P450 -threshold ${T} > ${T}.blast
    done
