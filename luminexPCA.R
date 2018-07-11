args <- commandArgs(TRUE)
library(devtools)
install_github("vqv/ggbiplot", force=TRUE)
library(ggbiplot)
luminex_file <- args[1]
phenotype <- args[2]
outprefix <- args[3]

luminex <- read.delim(luminex_file, sep="\t", header=T, row.names=1)
phenotype <- read.delim(phenotype, sep="\t", header=T)
groups <- phenotype$Phenotype
print(groups)
luminex.pca <- prcomp(t(luminex), center=TRUE, scale.=TRUE)

pdf(paste(outprefix, "_luminex.pdf", sep=""))
g <- ggbiplot(luminex.pca, obs.scale = 1, var.scale = 1,groups = groups, ellipse=TRUE)
g <- g+scale_color_manual(values=c("#6baed6", "#08519c", "#fdbe85", "#e6550d"))
g <- g + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_rect(colour = "black", size=2, fill=NA))
print(g)
dev.off()
