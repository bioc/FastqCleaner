% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate.R
\name{random_length}
\alias{random_length}
\title{Create a named object with random sequences and qualities}
\usage{
random_length(
  n,
  widths,
  random_widths = TRUE,
  replace = TRUE,
  len_prob = NULL,
  seq_prob = c(0.25, 0.25, 0.25, 0.25),
  q_prob = NULL,
  nuc = c("DNA", "RNA"),
  qual = NULL,
  encod = c("Sanger", "Illumina1.8", "Illumina1.5", "Illumina1.3", "Solexa"),
  base_name = "s",
  sep = "_"
)
}
\arguments{
\item{n}{number of sequences}

\item{widths}{width of the sequences}

\item{random_widths}{width must be picked at random from the 
passed parameter 'widths', considering the value
as an interval where any integer can be picked. Default TRUE. 
Otherwise, widths are picked only from the vector passed.}

\item{replace}{sample widths with replacement? Default TRUE.}

\item{len_prob}{vector with probabilities for each width value. 
Default NULL (equiprobability)}

\item{seq_prob}{a vector of four probabilities values to set 
the frequency of the nucleotides 'A', 'C', 'G', 'T', for DNA,
or 'A', 'C', 'G', 'U', for RNA. For example = c(0.25, 0.25, 0.5, 0).
Default is = c(0.25, 0.25, 0.25, 0.25) (equiprobability for the 4 bases).
If the sum of the probabilities is > 1, the values will be nomalized 
to the range [0, 1].}

\item{q_prob}{a vector of range = range(qual), with probabilities to set 
the frequency of each quality value. Default is equiprobability.
If the sum of the probabilities is > 1, the values will be nomalized 
to the range [0, 1].}

\item{nuc}{create sequences of DNA (nucleotides = c('A', 'C', 'G', 'T')) or
RNA (nucleotides = c('A, 'C', 'G', 'U'))?. Default: 'DNA'}

\item{qual}{quality range for the sequences. It must be a range included 
in the selected encoding:

'Sanger' = [0, 40]

'Illumina1.8' = [0, 41]

'Illumina1.5' = [0, 40]

'Illumina1.3' = [3, 40]

'Solexa' = [-5, 40]

example: for a range from 20 to 30 in Sanger encoding, 
pass the argument = c(20, 30)}

\item{encod}{sequence encoding}

\item{base_name}{Base name for strings}

\item{sep}{Character separing base names and the read number. Default: '_'}
}
\value{
\code{\link[ShortRead:ShortReadQ-class]{ShortReadQ}} object
}
\description{
Create a \code{\link[ShortRead:ShortReadQ-class]{ShortReadQ}}
object with random sequences and qualities
}
\examples{

# For reproducible examples, make a call to set.seed before 
# running each random function

set.seed(10)
s1 <- random_seq(slength = 10, swidth = 20)
s1

set.seed(10)
s2 <- random_seq(slength = 10, swidth = 20, 
prob = c(0.6, 0.1, 0.3, 0))
s2

}
\author{
Leandro Roser \email{learoser@gmail.com}
}
