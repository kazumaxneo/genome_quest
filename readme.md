
### genome_quest  
  
Scripts for bacterial genome assembly and corresponding sanger sequeincing.  
git clone this repo:

    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    perl genome_quest


#### ex1. de novo assembly and design primer

    genome quest -1 pair1.fq -2 pair2.fq  
#### ex2. design primer using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq  
#### ex3. blobplots and design primer using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq -db uniprot_ref_proteomes.fasta -e 1e-25  


