    
### Scripts to deal with bacterial genome assembly and corresponding sanger sequeincing.  
The assembly of bacterial genomes using short reads often results in fragmented assembly sequences. In order to construct full-length chromosome sequences from fragmented sequences, the contiguity between contigs must be determined by long load sequencing or PCR and corresponding Sanger sequencing. The former is more costly than the Illumina sequence, although the method is well established and there are several tools available. The latter is labor-intensive, and there are few tools to help with this labor-intensive task. This script: genome_quest automates this laborious and tedious process of designing primers. Combined with the excellent PRIMER3 software and associated tools, GENOME_QUEST can perform from de novo assembly and the design of an outward-facing primer at the end of a contig with just one command.



### Requirements

You must have the following installed on your system to use use this cript:
* ubuntu
* perl and two libraries (Statistics-Lite and Statistics::Basic)
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

genome_quest
    
    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    perl genome_quest

### docker
    
    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    docker build . -t genome_quest_docker
    docker run -itv $PWD:/data/ genome_quest_docker
    ./genome_quest


### usage
#### De novo assembly and design primer

    genome quest -1 pair1.fq -2 pair2.fq  
#### Design primer using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq  
#### Design primer and creating blobplot using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq -db uniprot_ref_proteomes.fasta -e 1e-25  


