STAR --runMode alignReads --runThreadN 10 --readFilesCommand zcat \
     --genomeDir /home/whushowmaker/GENCODE44/GenomeDir  --sjdbGTFfile /home/whushowmaker/GENCODE44/gencode.v44.gtf \
     --readFilesIn ./trimgalore/A1_L2_1_val_1.fq.gz ./trimgalore/A1_L2_2_val_2.fq.gz \
     --quantMode GeneCounts \
     --outFileNamePrefix A1_ \
     --sjdbOverhang 149 \
     --outSAMtype BAM SortedByCoordinate  --outSAMattributes All
     
STAR --runMode alignReads --runThreadN 10 --readFilesCommand zcat \
     --genomeDir /home/whushowmaker/GENCODE44/GenomeDir  --sjdbGTFfile /home/whushowmaker/GENCODE44/gencode.v44.gtf \
     --readFilesIn ./trimgalore/A2_L2_1_val_1.fq.gz ./trimgalore/A2_L2_2_val_2.fq.gz \
     --quantMode GeneCounts \
     --outFileNamePrefix A2_ \
     --sjdbOverhang 149 \
     --outSAMtype BAM SortedByCoordinate  --outSAMattributes All
     
STAR --runMode alignReads --runThreadN 10 --readFilesCommand zcat \
     --genomeDir /home/whushowmaker/GENCODE44/GenomeDir  --sjdbGTFfile /home/whushowmaker/GENCODE44/gencode.v44.gtf \
     --readFilesIn ./trimgalore/A6_L2_1_val_1.fq.gz ./trimgalore/A6_L2_2_val_2.fq.gz \
     --quantMode GeneCounts \
     --outFileNamePrefix A6_ \
     --sjdbOverhang 149 \
     --outSAMtype BAM SortedByCoordinate  --outSAMattributes All
     
STAR --runMode alignReads --runThreadN 10 --readFilesCommand zcat \
     --genomeDir /home/whushowmaker/GENCODE44/GenomeDir  --sjdbGTFfile /home/whushowmaker/GENCODE44/gencode.v44.gtf \
     --readFilesIn ./trimgalore/A7_L2_1_val_1.fq.gz ./trimgalore/A7_L2_2_val_2.fq.gz \
     --quantMode GeneCounts \
     --outFileNamePrefix A7_ \
     --sjdbOverhang 149 \
     --outSAMtype BAM SortedByCoordinate  --outSAMattributes All
