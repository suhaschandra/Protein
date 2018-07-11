## Principal Component Analysis of protein data - ELISA/Luminex

### Syntax: Rscript luminexPCA.R <Input_Luminex_File> <Input_Phenotype_File> <Output_Prefix>

### Input format Specifications:

a) Input Luminex File

This includes a matrix of protein concentrations for all samples and analytes to be included in the PCA. Please have the file in the following format. Please you test_luminex.txt as a template for this file.

b) Input Phenotype File

This includes information about sample phenotype. The first column has the sample ID, which should be in the same order as it appears in the Input Luminex File. The second column has information about the group it belongs to. Please use test_phenotype.txt as a template for this file.



N.B: The code generates a pdf file, which can be later opened in illustrator to eliminate less useful arrows and annotations.

