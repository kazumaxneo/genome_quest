FROM ubuntu:18.04
MAINTAINER Kazu <kazumaxneo@gmail.com>
LABEL maintainer="genome_quest"
RUN apt update
RUN apt install -y build-essential 
RUN apt install -y gcc
RUN apt install -y g++
RUN apt install -y wget
RUN apt install -y git
RUN apt clean

#miniconda
WORKDIR /home
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/Miniconda
RUN rm Miniconda3-latest-Linux-x86_64.sh
RUN export PATH=/home/Miniconda/bin:$PATH
RUN /home/Miniconda/bin/conda install -c bioconda -y spades bbmap primer3 seqkit blobtools
RUN git clone https://github.com/bioinfo-ut/GenomeTester4.git && cd GenomeTester4/src/ && make clean && make && export PATH=$PATH:$PWD
CMD ["/bin/bash --login"]
WORKDIR /data
USER root
