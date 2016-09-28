#Sequence Alignment Lab Notebook
###Part 2:
Information|A. thaliana|C. elegans|D. melanogaster
-|-|-|
Size of File|116 MB|98 MB|165 MB
Number of Chromosomes|7|6|4
Size of Genome in bp|119,667,750 bp|100,286,401 bp|168,736,537 bp
Number of Protein-coding genes|35,386|26,769|30,307
Average Protein Length|409.2820|445.3565|659.2903

History:
1082  grep ">" A.thaliana/protein.fa|wc
 1083  grep -c ">" A.thaliana/protein.fa
 1084  grep -c ">" C.elegans/protein.fa
 1085  grep -c ">" D.melanogaster/protein.fa
 1086  grep -v ">" A.thaliana/protein.fa | wc
 1087  grep -v ">" C.elegans/protein.fa | wc
 1088  grep -v ">" D.melanogaster/protein.fa | wc

###Part 4:

Score Distribution
      5 26.0
     17 27.0
     31 28.0
     55 29.0
     87 30.0
    109 31.0
    116 32.0
    116 33.0
     92 34.0
     86 35.0
     66 36.0
     48 37.0
     42 38.0
     28 39.0
     27 40.0
     26 41.0
      8 42.0
      8 43.0
      7 44.0
     10 45.0
      3 46.0
      5 47.0
      3 48.0
      3 50.0
      1 51.0
      1 52.0

Median: 33.0
Average: 33.913

Questions:

1. Is the shape of the curve normal? Do you expect it to be normal?
> The shape of the curve is normal because the data seems to suggest a parabolic, symmetric curve. I did not expect it to be normal because I thought aligning with random sequences would result in a wide distribution of scores rather than being biased towardsa few.
2. Do you expect all protein comparisons to have the same distribution?
> I do not expect all protein comparisons to have the same distribution because not all protein compositions are the same and proteins of different length can affect the distribution of scores.
3. How would protein composition and length affect the scores?
>Protein composition would affect the score by increasing or lowering it depending on how different the comparison says the proteins are. If two proteins have very different compositions, then the score would be lower and vice versa. For protein length, the score might be lower if the protein lengths are both short because there is a lower chance of getting a match within a short range than a longer range that would be suggested by long protein lengths.
4. How would the scoring matrix and gap penalites affect the scores?
>The scoring matrix affects the scores by determining how the program rewards matches and mismatches. If a scoring matrix is geared towards rewarding matches highly, then a comparison of two similar proteins would result in a much higher score than usual. It is the same case for mismatches, very different proteins would have a lower score for a scoring matrix geared towards penalizing mismatches than for a scoring matrix that is normal. Gap penalties affect the scores by deducting the score if there are gaps between amino acids within the sequence. Thus protein comparisons with many gaps, like with a short and a long protein for instance, would have low scores depending on the gap penalties.
5. How might real sequences be different from random?
> Real sequences have nucleotide or amino acid biases and repeatable elements.

###Part 5:
* How many amino acids can I align per second?

* How many amino acids do I need to align to do this experiment?

>A.thaliana total: 14482855 amino acids
D.melanogaster total: 19981113 amino acids
C.elegans query: 499 amino acids
>
A.thaliana vs C.elegans: 7226944645 amino acids 
D.melanogaster vs C.elegans: 9970575387 amino acids
D.melanogaster vs. C.elegans took 2 min 41 seconds = 161 seconds
61,929,039 amino acids per second

* How long would it take to compare two proteomes?
It would take 1298 hours or 4,672,825 seconds to compare two proteomes

Aligning two proteomes:
```bash
time water c_elegans_query.fa ~/Data/Species/A.thaliana/protein.fa -gapopen 10 -gapextend 5 -outfile at_ce_alignment.water
```
To grab highest score:
```bash
grep "Score" at_ce_alignment.water | cut -d " " -f 3 | sort -n | uniq -c and take highest score
```
To grab protein name:
```bash
grep -B 15 "Score: _Score_here_" _fileName_ to find protein name
```
####Arabidopsis Thaliana vs C.elegans:
Best match score: 337.0
Protein name: AT2G23190.1
Length: 493
Identity:     139/493 (28.2%)
Similarity:   228/493 (46.2%)
Gaps:          30/493 ( 6.1%)

Average score is 35.1454
Standard Dev is 15.7458

####D. melanogaster vs C. elegans
Best match score: 333.0
Protein name: FBpp0074380, FBpp0074381
Length: 506, 506
(Both have the same numbers)
Identity:     133/506 (26.3%)
Similarity:   227/506 (44.9%)
Gaps:          29/506 ( 5.7%)

Average score is 35.1253
Standard Dev is 9.1974

Shuffle the sequences:
```bash
shuffleseq ../../Data/Species/A.thaliana/protein.fa -outseq protein.shuffle.comp -shuffle 100
shuffleseq ../../Data/Species/D.melanogaster/protein.fa -outseq ../../Data/Species/D.melanogaster/protein.shuffle.comp -shuffle 100
```

Taking the average of the shuffled file scores using:
```bash 
grep Score fileName | awk '{sum+=$3} END {print sum/NR}'
```
**For C. elegans vs A. thaliana:** the expected score at random is 33.5767
**For C. elegans vs D. melanogaster:** the expected score at random is 34.3782

For A. thaliana: the score difference is 303.42
For D. melanogaster: the score difference is 298.62
 
History:
1176 time water mini_ce.fa mini_ath.fa -gapopen 10 -gapextend 5 -outfile test2.water
 1177  ls
 1178  vim mini_ce.fa 
 1179  time water c_elegans_query.fa mini_ath.fa -gapopen 10 -gapextend 5 -outfile test2.water
 1180  time water mini_ce.fa mini_ath.fa -gapopen 10 -gapextend 5 -outfile test2.water
 1181  bc
 1182  ls
 1183  history
 1184  ls
 1185  grep -v ">" ~/Data/Species/A.thaliana/protein.fa | wc
 1186  grep -v ">" ~/Data/Species/D.melanogaster/protein.fa | wc
 1187  ls
 1188  grep -v ">" c_elegans_query.fa | wc


