rm(list=ls())
library(msigdbr)
library(KEGGREST)
library(org.Hs.eg.db)
library(clusterProfiler)
library(enrichplot)
library(ggplot2)
library(GSEABase)
library(biomaRt)
library(stringr)
library(patchwork)
library(dplyr)
library(xlsx)
library(writexl)
library(GseaVis)



data1 <- read.table("/media/whushowmaker/本地磁盘/N2315491_80-1313756616_2023-09-17/bamfile/NCD2.all.name.df",header=TRUE,sep="\t")

head(data1)

data_sort <- data1 %>%
  arrange(desc(log2FoldChange))
head(data_sort)

gene_list <- data_sort$log2FoldChange
names(gene_list) <- data_sort$GENE_NAME
head(gene_list)

gmtfile ='/home/whushowmaker/gmt/c2.cp.kegg.v2023.1.Hs.symbols.gmt'
geneset <- clusterProfiler::read.gmt(gmtfile)

kk2 <- GSEA(gene_list,TERM2GENE=geneset,pvalueCutoff=10,pAdjustMethod = "none")

class(kk2)
colnames(kk2@result)
kegg_result <- as.data.frame(kk2)
rownames(kk2@result)[head(order(kk2@result$enrichmentScore))]
class(kk2)
af=as.data.frame(kk2@result)


write_xlsx(kegg_result,"/media/whushowmaker/本地磁盘/N2315491_80-1313756616_2023-09-17/bamfile/NCD2.all.kegg.20230922.xlsx")



gseaplot2(kk2,
          title = "",  
          "KEGG_RIBOSOME", 
          color="red", 
          base_size = 20, 
          subplots = 1:3, 
          pvalue_table = F)
