Data Records
The Data Records section should be used to explain each data record associated with this work, the location where this information is stored, and to provide an overview of the data files and their formats. This should include the initial data you choose for analyses. A notation should also be placed in the Methods containing the data-collection or analytical procedui used to derive the corresponding record. Summary Tables and Figures should be used to support the data records.


The *Acropora hyacinthus* transcriptome file used here was dowloaded from http://palumbi.stanford.edu/data/33496_Ahyacinthus_CoralContigs.fasta.zip on 1/15/2015. It was featured in ["Barshis, D.J., Ladner, J.T., Oliver, T.A., Seneca, F.O., Traylor-Knowles, N., and Palumbi, S.R. (2013) Genomic basis for coral resilience to climate change. PNAS 110, 1387–1392"](http://www.pnas.org/content/110/4/1387.abstract). The [supporting information file](http://www.pnas.org/content/suppl/2013/01/02/1210224110.DCSupplemental/pnas.201210224SI.pdf) contains detailed information on the experimental conditions and the methods used to create the transcriptome. Briefly, the transcriptome contains 33,496 contigs with high similarity to other cnidarian sequences. The authors used coral and dinoflagellate sequences to filter out dinoflagellate sequences, so the transcriptome contains mostly coral transcripts.

The file "Ahya_diff_contigs" is a text file derived from a [supplementary file](http://www.pnas.org/content/suppl/2013/01/02/1210224110.DCSupplemental/sd01.xlsx) that lists the 484 contigs that were differentially expressed between control and heated corals, regardless of source population. The contig IDs are the same as those in the transcriptome above. 

Other input files include 

###Table 2. Input and output data files 
Input files | Description
------------ | -------------
33496_Ahyacinthus_CoralContigs.fasta | *Acropora hyacinthus* transcriptome
Ahya_diff_contigs | List of *A. hyacinthus* differentially expressed contigs (temperature stress)
SPID and GO Numbers | Table of SWISS-PROT and GO IDs
GO_to_GOSlim | Table of GO and GOSlim IDs

Output files | Description
------------ | -------------
ID_CpG.tab | File with contig ID and CpG ratio
Ahya_cpg_GOslim.csv | File resulting from joining of CpG ratio and GOSlim IDs
Ahya_diff_cpg_GOslim.csv | File resulting from joining of file above with only differentially expressed contigs
