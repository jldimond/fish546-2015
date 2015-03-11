##Data Records

###Input files

The primary input files used in the analysis include transcriptome fasta files and SQLshare tables with annotation data (Table 2). Aside form the SQLshare files, these input files can be found [here](https://github.com/jldimond/fish546-2015/tree/master/Data). 

####Transcriptome data

######*Acropora hyacinthus*

The *Acropora hyacinthus* transcriptome file 33496_Ahyacinthus_CoralContigs.fasta was dowloaded from http://palumbi.stanford.edu/data/33496_Ahyacinthus_CoralContigs.fasta.zip on 1/15/2015. It was featured in an article by [Barshis et al. (2013)](http://www.pnas.org/content/110/4/1387.abstract). The [supporting information file](http://www.pnas.org/content/suppl/2013/01/02/1210224110.DCSupplemental/pnas.201210224SI.pdf) contains detailed information on the experimental conditions and the methods used to create the transcriptome. Briefly, the transcriptome contains 33,496 contigs with high similarity to other cnidarian sequences. The authors used coral and dinoflagellate sequences to filter out dinoflagellate sequences, so the transcriptome contains mostly coral transcripts.

######*Acropora millepora*

The FASTA file Amil_Moya.fasta is a transcriptome for *Acropora millepora* downloaded from NCBI at http://www.ncbi.nlm.nih.gov/nuccore?term=74409%5BBioProject%5D on 2/5/2015. It was featured in an article by [Moya et al. (2012)](http://onlinelibrary.wiley.com/doi/10.1111/j.1365-294X.2012.05554.x/full). The transcriptome was developed from newly settled polyps without symbionts.

######*Acropora palmata*

Apalmata_assembled.fasta is a transcriptome essembly for Acopora palmata downloaded from https://usegalaxy.org/datasets/cb51c4a06d7ae94e/display?to_ext=fasta on 2/19/2015. It was featured in an article by [Polato et al. 2011](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0028634). The transcriptome was developed from symbiont-free larval tissue.

######*Pocillopora damicornis*

The file blast2go_fasta_Pdamv2.fasta is a *Pocillopora damicornis* transcriptome assembly downloaded from http://2ei.univ-perp.fr/telechargement/transcriptomes/blast2go_fasta_Pdamv2.zip on 2/19/2015. It was originally featured in an article by [Vidal-Dupiol et al. (2013)](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0058652). The transcriptome was developed from adult *P. damicornis* and consists of 72,890 contigs. According to the authors, "...27.7% and 69.8% of the contigs were predicted to belong to the symbiont and the host transcriptome, respectively. The remaining contigs could not be taxonomically attributed." 

######*Stylophora pistillata*

The file Spist.fasta is a *Stylophora pistillata* transcriptome downloaded from http://data.centrescientifique.mc/Data/454Isotigs.fas.zip on 2/19/2015. This transcriptome was featured in an article by [Karako-Lampert et al. (2014)](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0088615). The transcriptome was developed from adult coral tissue, but the authors determined that only approximately 2.5% of the sequences mapped exclusively to the *Symbiodinium* genome. Thus, the vast majority of transcripts are coral transcripts.

###Other input data

Other input files included the SQLShare tables [SPID and GO Numbers](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320@washington.edu/SPID%20and%20GO%20Numbers) and [GO_to_GOslim](https://sqlshare.escience.washington.edu/sqlshare/#s=query/sr320%40washington.edu/GO_to_GOslim) with SWISS-PROT, GO, and GOslim IDs. 

#####Table 2. Input data files 
Input files | Description
------------ | -------------
Coral transcriptomes | FASTA files
SPID and GO Numbers | Table of SWISS-PROT and GO IDs
GO_to_GOSlim | Table of GO and GOSlim IDs

###Output files

The primary output datafiles (Table 3) include ID_CpG.tab, which includes CpG O/E calculated for all contigs in the transcriptome, and {sp_name}_cpg_GOslim.csv, a GOSlim annotation of each transcriptome. These files can be found [here](https://github.com/jldimond/fish546-2015/tree/master/Analyses).


![Figure 1](./images/ID_CpG.png?raw=true) 

Figure 1. Snapshot of a tab-delimited ID_CpG file showing contig ID and CpG O/E.


![Figure 2](./images/{species}_cpg_GOslim.png?raw=true) 

Figure 2. Snapshot of a tab-delimited {species}_cpg_GOslim.tab file showing contig ID, CpG O/E, and GOSlim biological processes terms.

#####Table 3. Output data files
Output files | Description
------------ | -------------
ID_CpG.tab | File with contig ID and CpG ratio
Ahya_cpg_GOslim.csv | File resulting from joining of CpG O/E and GOSlim IDs

From these data files, transcriptome-wide patterns of CpG O/E were determined, as well as CpG O/E patterns for each GOSlim bin. Transcriptome-wide analyses generally suggest bimodal patterns of CpG O/E in all species (Figs 1-5). As with patterns of gene body methylation in several other invertebrates analyzed to date, such a bimodal pattern appears to reflect populations of hypo- and hypermethylated genes.

![Figure 3](./images/Ahya_density.png?raw=true) 

Figure 3. *Acropora hyacinthus* transcriptome-wide CpG O/E.

![Figure 4](./images/Amil_density.png?raw=true) 

Figure 4. *Acropora millepora* transcriptome-wide CpG O/E.

![Figure 5](./images/Apalm_density.png?raw=true) 

Figure 5. *Acropora palmata* transcriptome-wide CpG O/E.

![Figure 6](./images/Pdam_density.png?raw=true) 

Figure 6. *Pocillopora damicornis* transcriptome-wide CpG O/E.

![Figure 7](./images/Spist_density.png?raw=true) 

Figure 7. *Stylophora pistillata* transcriptome-wide CpG O/E.

Analysis of CpG O/E by GOSlim bin for each species indicates mean CpG O/E for each biological process category. For all five species, the top four biological processes with the highest mean CpG O/E are cell-cell signalling, cell adhesion, signal transduction, and developmental processes. In contrast, DNA metabolism, RNA metabolism, protein metabolism, and other biological processes were consistently among the lowest categories in terms of CpG O/E.

![Figure 8](.images/Ahya_bar.png?raw=true) 

Figure 8. *Acropora hyacinthus* mean CpG O/E by GOSlim bin.

![Figure 9](./images/Amil_bar.png?raw=true) 

Figure 9. *Acropora millepora* mean CpG O/E by GOSlim bin.

![Figure 10](./images/Apalm_bar.png?raw=true) 

Figure 10. *Acropora palmata* mean CpG O/E by GOSlim bin.

![Figure 11](./images/Pdam_bar.png?raw=true) 

Figure 11. *Pocillopora damicornis* mean CpG O/E by GOSlim bin.

![Figure 12](./images/Spist_bar.png?raw=true) 

Figure 12. *Stylophora pistillata* mean CpG O/E by GOSlim bin.
