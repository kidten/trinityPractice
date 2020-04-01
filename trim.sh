#! /bin/bash


java -jar /opt/Trimmomatic-0.38/trimmomatic \
	PE \
	-phred33 \
	-threads 6 \
	SRR8655918_1.fastq.gz \
	SRR8655918_2.fastq.gz \
	clean_1.fastq.gz \
	unp_1.fastq.gz \
	clean_2.fastq.gz \
	unp_2.fastq.gz \
	ILLUMINACLIP:/opt/Trimmomatic-0.38/adapters/allAdapter.fas:2:30:10\
	LEADING:30 \
	TRAILING:30 \
	HEADCROP:5 \
	SLIDINGWINDOW:5:30 \
	MINLEN:50
