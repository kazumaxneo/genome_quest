
### genome_quest  
  
Scripts for bacterial genome assembly and corresponding sanger sequeincing.  
git clone this repo:

    git clone git@github.com:kazumaxneo/genome_quest.git
    cd genome_quest
    perl genome_quest


#### De novo assembly and design primer

    genome quest -1 pair1.fq -2 pair2.fq  
#### Design primer using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq  
#### Design primer and creating blobplot using user prepared contig  

    genome quest -f contig.fasta -1 pair1.fq -2 pair2.fq -db uniprot_ref_proteomes.fasta -e 1e-25  


