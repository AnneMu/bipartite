\encoding{UTF-8}

\name{plotModuleWeb}

\alias{plotModuleWeb}
\alias{prepareWebForPlottingModules}
\alias{addEmptyRowToMatrix}
\alias{addEmptyColToMatrix}
\alias{getModuleCoordinates}
\alias{isCorrectModuleWebObject}
\alias{drawModules}

\title{plotModuleWeb}

\description{
This function takes an object of class \code{moduleWeb} and plots the modules found by function \code{computeModules(...)} onto the graph.
}

\usage{
plotModuleWeb(moduleWebObject, plotModules = TRUE, 
rank = FALSE, weighted = TRUE, displayAlabels = TRUE, 
displayBlabels = TRUE, labsize = 1, xlabel = "", ylabel = "", 
square.border = "white", fromDepth = 0, upToDepth = -1)
}

\arguments{
  \item{moduleWebObject}{
An object of class "moduleWeb".
}
  \item{plotModules}{
If \code{plotModules} is true, modules are plotted onto the graph, otherwise only the graph itself is plotted.
}
  \item{rank}{logical; if true, rows will be standardised for plotting, yielding a range from light to dark blue for each row; if false, values are ranged across the entire matrix. The latter is more faithful to the data, while the former makes lower levels more comparable, irrespective of marginal totals.
}
  \item{weighted}{
If \code{weighted} is true, the intensity of squares representing the edges corresponds with the edge weight, otherwise all squares representing existing edges have equal intensity.
}
  \item{displayAlabels}{
Row labels are plotted, iff \code{displayAlabels} is true.
}
  \item{displayBlabels}{
Column labels are plotted, iff \code{displayBlabels} is true.
}
  \item{labsize}{
\code{labsize} is the scalar factor with which the size of the plot labels can be changed.
}
  \item{xlabel}{
\code{xlabel} is the label for the x-axis.
}
  \item{ylabel}{
\code{ylabel} is the label for the y-axis.
}
  \item{square.border}{
Background color of area with squares.
}
  \item{fromDepth}{
Minimal depth of modules which should be plotted.
}
  \item{upToDepth}{
Maximal depth of modules which should be plotted. If upToDepth is smaller then fromDepth, all modules are plotted.
}
}

\value{
A plot window with appropriate size according to the dimensions of the web.
}

\author{Rouven Strauss}

\seealso{
See also function \code{visweb}.
}
\examples{
\dontrun{
data(small1976)

moduleWebObject = computeModules(small1976);
plotModuleWeb(moduleWebObject);
}
}
\keyword{Methods and Generic Functions}
\keyword{Clustering}
