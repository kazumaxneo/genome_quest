FROM ubuntu:18.04
MAINTAINER Kazu <kazumaxneo@gmail.com>
LABEL maintainer="genome_quest"
RUN apt update
RUN apt install -y build-essential 
RUN apt install -y gcc
RUN apt install -y g++
RUN apt install -y wget
RUN apt install -y git
RUN apt install cpanminus -y
RUN apt clean

#miniconda
WORKDIR /home
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/Miniconda
RUN rm Miniconda3-latest-Linux-x86_64.sh
RUN echo 'export PATH=$PATH:/home/Miniconda/bin' >> ~/.profile
RUN echo 'export PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB"' >> ~/.profile
RUN echo 'export PATH="$HOME/perl5/bin:$PATH"' >> ~/.profile
RUN /home/Miniconda/bin/conda install -c bioconda -y spades bbmap primer3 seqkit blobtools
RUN git clone https://github.com/bioinfo-ut/GenomeTester4.git && cd GenomeTester4/src/ && make clean && make && echo 'export PATH=$PATH:'${PWD}'' >> ~/.profile
RUN cpanm Statistics::Lite
RUN cpanm Statistics::Basic
ADD bin/primer3_masker /usr/local/bin/
ADD genome_quest /usr/local/bin/
WORKDIR /data
USER root
