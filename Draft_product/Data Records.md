The primary input files used in the analysis include the transcriptome fasta file, a list of differentially expressed contigs, and SQLshare tables with annotation data (Table 2). The *Acropora hyacinthus* transcriptome was dowloaded from http://palumbi.stanford.edu/data/33496_Ahyacinthus_CoralContigs.fasta.zip on 1/15/2015. It was featured in an article by [Barshis et al. (2013)](http://www.pnas.org/content/110/4/1387.abstract). The [supporting information file](http://www.pnas.org/content/suppl/2013/01/02/1210224110.DCSupplemental/pnas.201210224SI.pdf) contains detailed information on the experimental conditions and the methods used to create the transcriptome. Briefly, the transcriptome contains 33,496 contigs with high similarity to other cnidarian sequences. The authors used coral and dinoflagellate sequences to filter out dinoflagellate sequences, so the transcriptome contains mostly coral transcripts.

The file "Ahya_diff_contigs" is a text file derived from a [supplementary file](http://www.pnas.org/content/suppl/2013/01/02/1210224110.DCSupplemental/sd01.xlsx) that lists the 484 contigs that were differentially expressed between control and heated corals, regardless of source population. The contig IDs are the same as those in the transcriptome above. 

Other input files included the SQLShare tables [SPID and GO Numbers](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320@washington.edu/SPID%20and%20GO%20Numbers) and [GO_to_GOslim](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320%40washington.edu/GO_to_GOslim) with SWISS-PROT, GO, and GOslim IDs. 

###Table 2. Input data files 
Input files | Description
------------ | -------------
33496_Ahyacinthus_CoralContigs.fasta | *Acropora hyacinthus* transcriptome
Ahya_diff_contigs | List of *A. hyacinthus* differentially expressed contigs (temperature stress)
SPID and GO Numbers | Table of SWISS-PROT and GO IDs
GO_to_GOSlim | Table of GO and GOSlim IDs


The primary output datafiles (Table 3) include ID_CpG.tab, which includes CpG O/E calculated for all contigs in the transcriptome. ID_CpG_diff.tab is a subset of this file with only differentially expressed contigs. The files with GOslim annotation include Ahya_cpg_GOslim.csv and Ahya_diff_cpg_GOslim.csv; the latter file include only differentially expressed contigs.

###Table 3. Output data files
Output files | Description
------------ | -------------
ID_CpG.tab | File with contig ID and CpG ratio
ID_CpG_diff.tab | File with contig ID and CpG ratio for differentially expressed contigs
Ahya_cpg_GOslim.csv | File resulting from joining of CpG ratio and GOSlim IDs
Ahya_diff_cpg_GOslim.csv | CpG ratio and GOslim IDs for differentially expressed contigs
