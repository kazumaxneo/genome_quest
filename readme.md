    
### Scripts to deal with bacterial genome assembly and corresponding sanger sequencing.  
The assembly of bacterial genomes using short reads often results in fragmented assembly sequences. To construct a full-length chromosome sequence from the fragmented sequence, the contig intervals must be determined by long read sequencing or PCR followed by Sanger sequencing. Long-read sequencing is a well-established method, but it is costly. The latter is labor-intensive, and few tools exist to assist in this labor-intensive task. This script: genome_quest, was developed to automate this tedious and cumbersome process of primer design. By combining the excellent PRIMER3 software with related tools, genome_quest can do everything from de novo assembly to designing outward facing primers for contig ends with just one command.



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


### Install
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
    
    #perl librrary
    apt install cpanminus
    export PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB"
    export PATH="$HOME/perl5/bin:$PATH"
    cpanm Statistics::Lite
    cpanm Statistics::Basic
    
    

genome_quest
    
    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    perl genome_quest

### Docker
    
    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    docker build . -t genome_quest_docker
    docker run -itv $PWD:/data/ genome_quest_docker
    . ~/.profile
    genome_quest

### test run
    
    cd test_data/
    genome_quest -1 paired_1.fq.gz -2 paired_2.fq.gz

### Usage
#### De novo assembly and design primer

    genome_quest -1 pair1.fq -2 pair2.fq -primer yes  
#### Design primer using user prepared contig  

    genome_quest -f contig.fasta -1 pair1.fq -2 pair2.fq -primer yes 
#### Creating blobplot using user prepared contig

    genome_quest -f contig.fasta -1 pair1.fq -2 pair2.fq -db uniprot_ref_proteomes.fasta -e 1e-25 -primer no 


