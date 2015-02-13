Methods

First, we developed an iPython script that performed a blastx query of the transcriptome datasets against the SWISS-PROT database, returning the best predicted protein match with an e-value of >= 10^-5. After removing pipes from the tab-delimited output file, the file was uploaded to SQLShare and joined with the tables [SPID and GO Numbers](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320@washington.edu/SPID%20and%20GO%20Numbers) and [GO_to_GOslim](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320%40washington.edu/GO_to_GOslim) in order to obtain GOslim IDs for all contigs. Only GOslim biological process ('P') terms were included. This join process allowed an individual contig to fall into more than one GOslim bin, but did not allow it to occur in the same bin more than once. The result was an annotation file including contig IDs and GOslim IDs.

Next, an iPython script was developed to serve as a pipeline for analysis of CpG O/E. The original FASTA file was converted to tab-delimited format, then a new column with the number of sequences in each contig was added to the file. The number of C, G, and CG in each contig were then computed and each passed to separate files that were subsequently appended to the main file. The script then calculated CpG O/E as:

####CpG O/E = (number of CpG / number of C x number of G) x (l^2/l-1)

where l is the number of nucleotides in the contig.

The result was passed to a new file containing the contig ID and CpG O/E. This file was then uploaded to SQLShare where it was joined with the GOSlim annotation file described above. The resulting file contained contig ID, CpG O/E, and GOslim ID. 

To obtain only the subset of data on differentially expressed contigs, a file containing contig IDs for differentially expressed contigs was uploaded to SQLShare and joined with the CpG O/E data and GOSlim IDs.

Data were analyzed by converting data files to pandas tables. CpG O/E in the whole transcriptome and differentially expressed contigs were evaluated with density plots and bar plots for each GOslim bin. Because the GOslim annotation file contained contigs that were duplicated if they fell into more than one GOslim bin, density curves were plotted with CpG O/E data files generated prior to joining with GOslim annotation files.

Analyses were perfomed on a computer running Ubuntu 14.04 with Python 2.7.


