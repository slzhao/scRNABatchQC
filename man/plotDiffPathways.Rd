% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotFunctions.R
\name{plotDiffPathways}
\alias{plotDiffPathways}
\title{plot pathways enriched in differentially expressed genes}
\usage{
plotDiffPathways(
  scesMerge,
  margins = c(5, 5),
  keysize = 1,
  col = colorpanel(75, low = "white", high = "red"),
  ...
)
}
\arguments{
\item{scesMerge}{a SingleCellExperiment object; this object contains the combined datasets, pairwise comparison results and reduced dimensions using PCA and tSNE; (results from \code{\link{Combine_scRNAseq}})}

\item{margins}{margins for heatmap.2}

\item{keysize}{integer for heatmap.2}

\item{col}{color for heatmap.2}

\item{...}{parameters passing to heatmap.2}
}
\value{
a matrix containing the -log10 FDR of enriched pathways
}
\description{
plot the differentially expressed genes in any pairwise comparison
}
\examples{
library(scRNABatchQC)
sces<-Process_scRNAseq(inputfile=c("https://github.com/liuqivandy/scRNABatchQC/raw/master/bioplar1.csv.gz",
                                   "https://github.com/liuqivandy/scRNABatchQC/raw/master/bioplar5.csv.gz"))
scesMerge<-Combine_scRNAseq(sces)
plotDiffPathways(scesMerge)
}
\seealso{
\code{\link{Process_scRNAseq}}, \code{\link{Combine_scRNAseq}}
}
