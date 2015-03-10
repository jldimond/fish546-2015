####Methods

*Transcriptome annotation*

Transcriptomes were annotated in an [IPython notebook workflow](https://github.com/jldimond/fish546-2015/tree/master/Course_Project/Workflow). All transcriptomes were annotated using Blastx (version 2.2.29) for comparison to the UniProt/Swiss-Prot protein database (version 2/17/2015). Parameters for blastx were has follows: 

- maximum number of target sequences = 1
- maximum number of high-scoring pairs = 1
- output format = tabular
- E-value = 10^-5
- number of threads = 8

After removing pipes from the tab-delimited output file, the file was uploaded to SQLShare and joined with the tables [SPID and GO Numbers](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320@washington.edu/SPID%20and%20GO%20Numbers) and [GO_to_GOslim](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320%40washington.edu/GO_to_GOslim) in order to obtain GOslim IDs for all contigs. Only GOslim biological process ('P') terms were included. This join process allowed an individual contig to fall into more than one GOslim bin, but did not allow it to occur in the same bin more than once. The result was an annotation file including contig IDs and GOslim IDs.

*CpG ratio analysis*

Next, an [IPython notebook workflow](https://github.com/jldimond/fish546-2015/tree/master/Course_Project/Workflow) was developed to serve as a pipeline for analysis of CpG O/E. The original FASTA file was converted to tab-delimited format, then a new column with the number of sequences in each contig was added to the file. The number of C, G, and CG in each contig were then computed and each passed to separate files that were subsequently appended to the main file. The script then calculated CpG O/E as:

#####CpG O/E = (number of CpG / number of C x number of G) x (l^2/l-1)

where l is the number of nucleotides in the contig.

The result was passed to a new file containing the contig ID and CpG O/E. This file was joined with the GOSlim annotation file described above based on common contig ID numbers. The resulting file contained contig ID, CpG O/E, and GOslim ID. 

Data were analyzed by converting data files to pandas tables. CpG O/E was evaluated graphically with density plots for transcriptome-wide patterns and with bar plots with means for each GOslim bin. Because the GOslim annotation file contained contigs that were duplicated if they fell into more than one GOslim bin, density curves were plotted with CpG O/E data files generated prior to joining with GOslim annotation files.

Analyses were perfomed on a computer running Ubuntu 14.04 with Python 2.7.


