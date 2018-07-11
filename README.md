## Principal Component Analysis of protein data - ELISA/Luminex

### Syntax: Rscript luminexPCA.R Input_Luminex_File Input_Phenotype_File Output_Prefix

### Input format Specifications:

a) Input Luminex File

This includes a matrix of protein concentrations for all samples and analytes to be included in the PCA. Please have the file in the following format:

b) Input Phenotype File

This includes information about sample phenotype. The first column has the sample ID, which should be in the same order as it appears in the Input Luminex File. The second column has information about the group it belongs to.


