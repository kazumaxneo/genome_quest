Scripts for bacterial genome assembly and corresponding sanger sequeincing.  

### Requirements

You must have the following installed on your system to use use this cript:
* ubuntu
* spades (<https://github.com/ablab/spades>)
* bbmap (<https://sourceforge.net/projects/bbmap/>)
* primer3 (<https://github.com/primer3-org/primer3>)
* primer3_masker (<https://github.com/bioinfo-ut/primer3_masker>)
* Genome Tester4 (<https://github.com/bioinfo-ut/GenomeTester4>)
* bwa (<https://github.com/lh3/bwa>)  
* seqkit (<https://github.com/shenwei356/seqkit>)
optional
* blobtools (<https://github.com/DRL/blobtools>)


### install
Dependency

    #spades, bbmap, primer3, seqkit, blobtools
    conda install -c bioconda -y spades bbmap primer3 seqkit blobtools
    #Genome Tester4
    git clone https://github.com/bioinfo-ut/GenomeTester4.git
    
    cd GenomeTester4/src/
    make clean
    make
    export PATH=$PATH:$PWD
    #primer3_masker 
    git clone https://github.com/bioinfo-ut/primer3_masker 
    cd primer3_masker/src/ 
    make primer3_masker

    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    perl genome_quest


### usage
#### De novo assembly and design primer

    genome quest -1 pair1.fq -2 pair2.fq  
#### Design primer using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq  
#### Design primer and creating blobplot using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq -db uniprot_ref_proteomes.fasta -e 1e-25  


