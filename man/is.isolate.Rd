\name{is.isolate}
\alias{is.isolate}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{ Is Ego an Isolate? }
\description{
  Returns TRUE iff ego is an isolate in graph \code{g} of \code{dat}.
}
\usage{
is.isolate(dat, ego, g=1, diag=FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{dat}{ A graph or graph stack }
  \item{ego}{ Index of the vertex (or a vector of vertices) to check }
  \item{g}{ Which graph should be examined? }
  \item{diag}{ Boolean indicating whether adjacency matrix diagonals (i.e., loops) contain meaningful data }
}
\details{
In the valued case, any non-zero edge value is taken as sufficient to establish a tie.
}
\value{
A boolean value (or vector thereof) indicating isolate status
}
\references{
Wasserman, S., and Faust, K.  (1994).  ``Social Network Analysis: Methods and Applications.''  Cambridge: Cambridge University Press.

West, D.B.  (1996).  \emph{Introduction to Graph Theory}.  Upper Saddle River, NJ: Prentice Hall. }
\author{ Carter T. Butts \email{ctb@andrew.cmu.edu} }
%\note{  }

% ~Make other sections like WARNING with \section{WARNING }{....} ~

\seealso{ \code{\link{isolates}}, \code{\link{addisolates}} }

\examples{
#Generate a test graph
g<-rgraph(20)
g[,4]<-0          #Create an isolate
g[4,]<-0

#Check for isolates
is.isolate(g,2)  #2 is almost surely not an isolate
is.isolate(g,4)  #4 is, by construction
}
\keyword{ logic }%-- one or more ...
\keyword{ network }