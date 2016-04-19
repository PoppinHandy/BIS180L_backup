# BLAST, orthologs, and paralogs (Week 2, 20 pts possible)

__Name:__ Andy Pham

__Student ID:__ 997942129

*_Please answer the following questions which are each worth 2 points. Be clear and concise with any written answers. Late assignments will be penalized with a 2pt deduction without prior communication of extenuating circumstances._*

__Q1__.  Paste in code and output for the `for loop`  __Exercise 1__ (pluralizing fruit names)

__Q2__. Create a table that indicates blastp runtime as a function of word size.  Is there a linear relationship?  Why does does changing the word size change the search time?

####BLASTP Word Size vs Runtime (Default threshold 11)
BLASTP Word Size|Runtime
--|
3|0m5.590s
4|0m7.903s
5|0m25.618s
6|0m18.177s
7|0m14.865s

There appears to be no linear relationship. Changing the word size changes the search time because word size is the minimum amount of nucleotides or amino acids that align before BLAST initiates a further search of that particular sequence. Thus different word sizes wil determine how rigourously BLAST will search sequences and then expand on them, which will affect how long BLAST will run. 

__Q3__.  How much faster is blastp than water at a word size of 5?
Water took 519 seconds and blastp took 25 seconds, so blastp is faster by about 494 seconds.

__Q4__.  How long will it take to search two proteomes with word length 5?
C. elegans: 499
D. melanogaster: 
389201943.438 amino acids/second


__Q5__.  Using E-value to determine the best match, find a worm gene with a single fly ortholog and record their names and the reciprocal E-Values.  Is there more than one fly "hit" for your worm gene?  If so how do you decide if there is a single orthlog?

__Q6__.  What logic would you use to find orthologs automatically using BLAST?

__Q7__.  Discuss what makes orthology difficult to determine by the reciprocal BLAST method.

__Q8__.  How many paralogs did you find for T21B10.2a and for B0213.10?  What criteria did you use?

__Q9__.  Discuss what makes paralogy difficult to determine by BLAST.

__Q10__.  Is alignment score sufficient for determining orthology or paralogy? What other sources of information from the BLAST output might be useful?  What other types of analyses would be helpful?

Add and commit changes for both this document and your lab notebook to the repository.  Push to GitHub and set an issue to indicate that you are ready for this to be graded.