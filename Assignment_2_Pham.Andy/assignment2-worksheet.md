# BLAST, orthologs, and paralogs (Week 2, 20 pts possible)

__Name:__ Andy Pham

__Student ID:__ 997942129

*_Please answer the following questions which are each worth 2 points. Be clear and concise with any written answers. Late assignments will be penalized with a 2pt deduction without prior communication of extenuating circumstances._*


__Q1__. Create a table that indicates blastp runtime as a function of
threshold value.  Is there a linear relationship?  Why does does
changing the threshold change the search time?

BLASTP Threshold|Runtime
--|
10|0m8.186s
11|0m5.590s
12|0m4.814s
13|0m3.706s
14|0m3.682s
15|0m2.684s

>There seems to be a linear relationship. Changing the threshold changes the search time because it controls the size of the search space that BLAST searches in. Larger threshold values means that the search space will be smaller because BLAST will be looking for bigger, more strict word sizes, and thus this will quicken BLAST's runtime.  

__Q2__.  How much faster is blastp than water under default parameters?
>Under default parameters, blastp takes 5.590 seconds and water takes 149.368 seconds. Thus blastp is faster than water by about 144 seconds.

__Q3__.  What search parameters (matrix and threshold) would you use to
search two proteomes? Justify your answer.
>For two proteomes, in terms of threshold, I would use something larger than 11, like 13 or 14  because proteomes are large, and the search space will be huge given the vast amounts of proteins to align. Thus, a larger threshold would make sure the search would not take a long time to finish, as well as guaranteeing a higher accuracy in alignments. For the matrix, I would use the default EBLOSUM62 matrix because it is specifically made for amino acids and takes into account the probabilities of amino acid pairings in an alignment. The matrix is optimal for detecting weak protein similarities. 

__Q4__.  How long will it take to search two proteomes (given the above)?
>Given a threshold of 14 with an EBLOSUM62 matrix and having two proteomes being A. thaliana vs D. melanogaster, it will take 106,865 seconds or about 30 hours at a rate of 2,707,923,787 amino acids/second.

__Q5__.  Using E-value to determine the best match, find a worm gene with a single fly ortholog and record their names and the reciprocal E-Values.  Is there more than one fly "hit" for your worm gene?  If so how do you decide if there is a single orthlog?
>Fly: FBpp0079448
Worm: ZK909.2h
Reciprocal E-values: 0.0 
There was only one fly "hit" in this case to the worm gene, but there were multiple worm genes that matched up to the fly gene. To decide if it is a single ortholog, you would have to find a one-to-one relationship between two genes, as in only one fly gene would be mapped to only one worm gene.  

__Q6__.  What logic would you use to find orthologs automatically using BLAST?
>To find orthologs automatically using BLAST, I would run BLAST with a threshold E-value limit to make sure all the genes matched fall under a certain E-value and then I would run BLAST reciprocally for the two proteomes. I would then check to make sure only one fly gene matched with only one gene from the worm using grep on the two protein names in both BLAST match files. 

__Q7__.  Discuss what makes orthology difficult to determine by the reciprocal BLAST method.
>What makes orthology difficult is that you don't know if the genes you see matched actually came from an ancestral species or whether they're similar genes gained from convergent evolution. Additionally, you don't know whether these genes have transposable elements that are inserting themselves. 

__Q8__.  How many paralogs did you find for T21B10.2a and for B0213.10?  What criteria did you use?
>I found 3 paralogs associated with T21B10.2a and 70 paralogs associated with B0213.10. The criteria I used was having an evalue of 1e-10 and the default parameters.

__Q9__.  Discuss what makes paralogy difficult to determine by BLAST.
>Paralogy is difficult to determine by BLAST because you don't know whether the genes matched came from repeatable elements or from actual gene duplication events. Additionally, alternative spliced genes would give you matches as well, and alternative splicing does not result in paralogs. The matched sequences don't give you any clue as to where the similarity arised from, and it would be hard to make conclusions based on just seeing the alignment. 

__Q10__.  Is alignment score sufficient for determining orthology or paralogy? What other sources of information from the BLAST output might be useful?  What other types of analyses would be helpful?

>Alignment score is not sufficient for determining orthology or paralogy. From the BLAST output, the actual alignment with the proteins or nucleotides shown would be useful to see the composition. Some other information that could be useful would be the identity percentage, number of mismatches, and number of gaps. They could be useful since these statistics could be crucial in determining the characteristics of why the matches happened. Other types of analyses that would be helpful would be a phylogenetic analysis of the two species tracking proteins, a clustering analysis that would group multiple proteins together based on function, or maybe even a transcriptome analysis to see how these proteins were made.

Add and commit changes for both this document and your lab notebook to the repository.  Push to GitHub and set an issue to indicate that you are ready for this to be graded.
