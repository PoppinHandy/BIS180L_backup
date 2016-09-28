#Lab 2: Bash For Loops AND BLAST

Exercise 1:

```bash
fruits="bannana apple orange grape plum pear durian pineapple"
for fruit in $fruits:
do:
	echo "${fruit}es"
done
```

##BLAST 
Assigning Aliases and formatting fly database:
```bash
ln -s ~/Bioinformatics_Lab_BIS180L/Data/Species/D.melanogaster/protein.fa ./flypep
formatdb -i flypep -p T
ln -s ../Lab1_Sequence_Alignment/c_elegans_query.fa ./P450
time blastp -db flypep -query P450 > default.blast
```

After running threshold loop:

>Starting blastp with threshold 10
>
real	0m8.186s
user	0m4.796s
sys	0m0.720s
Starting blastp with threshold 11

>real	0m5.590s
user	0m2.924s
sys	0m0.404s
Starting blastp with threshold 12

>real	0m4.814s
user	0m2.188s
sys	0m0.408s
Starting blastp with threshold 13

>real	0m3.706s
user	0m1.856s
sys	0m0.292s
Starting blastp with threshold 14

>real	0m3.682s
user	0m1.436s
sys	0m0.360s
Starting blastp with threshold 15

>real	0m2.684s
user	0m1.292s
sys	0m0.284s

To find orthologs:
```bash
time blastp -query wormpep_db/wormpep -db flypep_db/flypep -outfmt 6 -culling_limit 1 -threshold 13 > worm_fly.blast
time blastp -query flypep_db/flypep -db wormpep_db/wormpep -outfmt 6 -culling_limit 1 -threshold 13 > fly_worm.blast
```
To find smallest E-Value:
```bash
cut -f 11 worm_fly.blast | sort -n -r | uniq -c
grep "_evalue_" worm_fly.blast 
```
To find paralogs:
```bash
blastp -db wormpep -query T21B10.2a -evalue 1e-10 > T21B10.2a.blastp
blastp -db wormpep -query B0213.10 -evalue 1e-10 > B0213.10.blastp
```
