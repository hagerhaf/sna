\name{symmetrize}
\alias{symmetrize}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{ Symmetrize an Adjacency Matrix }
\description{
 Symmetrizes the elements of \code{mats} according to the rule in \code{rule}.
}
\usage{
symmetrize(mats, rule="weak")
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{mats}{ A graph or graph stack}
  \item{rule}{ One of ``upper'', ``lower'', ``strong'' or ``weak'' }
}
\details{
 The rules used by \code{symmetrize} are as follows:
\enumerate{
\item upper: Copy the upper triangle over the lower triangle

\item lower: Copy the lower triangle over the upper triangle

\item strong: i<->j iff i->j and i<-j  (AND rule)

\item weak: i<->j iff i->j or i<-j  (OR rule)
}
}
\value{
The symmetrized graph stack
}
\references{ Wasserman, S., and Faust, K.  (1994).  \emph{Social Network Analysis: Methods and Applications}.  Cambridge: Cambridge University Press. }
\author{ Carter T. Butts \email{ctb@andrew.cmu.edu} }
%\note{  }

 %~Make other sections like WARNING with \section{WARNING }{....} ~

%\seealso{ }

\examples{
#Generate a graph
g<-rgraph(5)

#Weak symmetrization
symmetrize(g)

#Strong symmetrization
symmetrize(g,rule="strong")
}
\keyword{ manip }
\keyword{ array }%-- one or more ...
\keyword{ network }