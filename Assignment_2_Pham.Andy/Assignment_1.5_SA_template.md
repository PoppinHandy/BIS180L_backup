Assignment 1.5
==============

# Template for Sequence Alignment Assignment (20 pts possible)

__Full Name:__ Andy Pham

__Student ID:__ 997942129

*_Please answer the following questions which are each worth 1 point unless otherwise indicated. Be clear and concise with any written answers. Graphs should be properly constructed (axis labels, units, titles, etc.)_*

__1.__ How do you know that when you use `shuffleseq` the sequences have the same exact composition?

>You know because if you use compseq on the shuffled sequence file and the original file, which will output the number of letters in each file, and then use diff on the outputs of the compseq commands, nothing will be outputted from the diff. This means the two sequence files have the same amount of letters.

__2.__ Create a text based "histogram" as desribed in the lab manual
that shows the distribution of scores when aligning shuffled sequences.
Why is the shape of the curve not quite normal?
>Score Distribution
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

>The shape of the curve is not quite normal because sample size is not large enough to shape the normal curve. 

__3.__ What would be the effect of doing 1,000,000 shuffled sequences?

>The effect would be a more normal curve and visible pattern in the distributions because after some point, the randomized sequences would start repeating themselves and we would get the same distribution of scores in larger proportions.

__4.__ Briefly discuss the relationship of sequence length and score.

>For sequence length, the score might be lower if the sequence lengths are both short because there is a lower chance of getting a match within a short range than a longer range that would be suggested by long sequence lengths. On the other end, shorter sequence lengths could also score high because one match would increase the percentage identity by an amount higher than long sequence lengths would simply due to a smaller denominator. 


__5.__ Starting with the C. elegans B0213.10 protein, find the best
match in the A. thaliana and D. melanogaster proteomes with `water`.
Record their alignment scores, percent identities, and protein names
here.

>#####Arabidopsis Thaliana vs C.elegans:
_Best match score_: 337.0
_Protein name_: AT2G23190.1
_Identity_:     139/493 (28.2%)
_Similarity_:   228/493 (46.2%)
_Gaps_: 30/493 ( 6.1%)

>#####D. melanogaster vs C. elegans:
_Best match score_: 333.0
_Protein name_: FBpp0074380, FBpp0074381
(Both have the same numbers)
_Identity_:     133/506 (26.3%)
_Similarity_:   227/506 (44.9%)
_Gaps_:          29/506 ( 5.7%)



__6.__ What is the expected (average) score of each pairwise alignment
at random? (Perform some shuffled alignments to get an idea of what the
random expectation is).

>#####For C. elegans vs A. thaliana: 
Expected score at random: 33.5767
>#####For C. elegans vs D. melanogaster
Expected score at random: 34.3782


__7.__ How many Z-scores away from the mean is the best alignment?
>**A. thaliana vs C. elegans:**
19.1704 Z-scores away from the mean

>**D. melanogaster vs C. elegans:**
32.3868 Z-scores away from the mean

__8.__ Briefly discuss the statistical and biological significance of your results.

>The high z-scores of both A. thaliana and D. melanogaster mean that those scores are highly unlikely to happen at random. This means the scores happened because these proteins are very similar, and not due to some random chance. The biological significance of the best matched proteins to the C. elegans query is that all the best matched proteins are metal binding proteins that bind speficially to iron ions and heme ions. They are all involved in oxido-reductase activity. 

__9.__ Approximately how long would it take to compare two proteomes using `water`?
>It would take about 1298 hours or 4,672,825 seconds at a rate of 61,929,039 amino acids per second to compare two proteomes.