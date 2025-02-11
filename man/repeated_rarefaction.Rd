% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repeated_rarefaction.R
\name{repeated_rarefaction}
\alias{repeated_rarefaction}
\title{Perform Repeated Rarefaction and Generate an Ordination Plot}
\usage{
repeated_rarefaction(
  input,
  repeats = 50,
  threshold = 250,
  colorb = "sample_id",
  group = "sample_id",
  cloud = TRUE,
  ellipse = FALSE,
  cores = 4
)
}
\arguments{
\item{input}{A \code{phyloseq} object.}

\item{repeats}{An integer. The number of rarefaction repeats. Default = 50.}

\item{threshold}{An integer. The threshold value for rarefaction. Default = 250.}

\item{colorb}{A string. Column name in \code{sample_data()} used for point colors.}

\item{group}{A string. Column name in \code{sample_data()} used for grouping and ellipse calculation.}

\item{cloud}{A boolean. If \code{TRUE}, all repeated data points are shown. Default = FALSE.}

\item{ellipse}{A boolean. If \code{TRUE}, confidence ellipses are drawn. Default = TRUE.}

\item{cores}{An integer. Number of cores to use for parallel processing. Default = 4.}
}
\value{
A list containing:
\itemize{
\item \code{repeats}: Number of repeats.
\item \code{df_consensus_coordinates}: Median ordination positions.
\item \code{df_all}: All ordination positions.
\item \code{plot}: The generated ordination plot.
}
}
\description{
This function performs repeated rarefaction on a phyloseq object,
computes ordination, and generates a PCA-based visualization.
}
