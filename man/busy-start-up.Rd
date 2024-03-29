% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/start-up.R
\name{busy-start-up}
\alias{busy-start-up}
\alias{busy_start_up}
\alias{remove_start_up}
\title{Busy indicator at start up}
\usage{
busy_start_up(
  loader,
  text = NULL,
  mode = c("timeout", "auto", "manual"),
  timeout = 500,
  color = "#112446",
  background = "#f0f0f0"
)

remove_start_up(timeout = 100, session = shiny::getDefaultReactiveDomain())
}
\arguments{
\item{loader}{A spinner created with \code{\link{spin_epic}} or \code{\link{spin_kit}}
or a simple HTML tag, to include a GIF (see examples).}

\item{text}{Optional text to be displayed under the loading animation.}

\item{mode}{How to remove the start-up page: \code{"timeout"}, \code{"auto"} or \code{"manual"}, see below for details.}

\item{timeout}{Time (in milliseconds) to wait before removing the start-up page.}

\item{color}{Color of text.}

\item{background}{Background color.}

\item{session}{Shiny session.}
}
\value{
HTML tag that can be included in UI definition.
}
\description{
Show a full-page busy indicator when application is initialized,
then removed it after timeout, automatically or manually from server.
}
\details{
Behavior according to \code{mode} argument:
\itemize{
\item \strong{timeout}: Busy indicator will be removed after the time (in milliseconds) specified in \code{timeout}.
\item \strong{manual}: Busy indicator will be removed with \code{remove_start_up} from server,
timeout from \code{busy_start_up} is ignored in favor of that of \code{remove_start_up}.
\item \strong{auto}: Busy indicator is removed after JavaScript \code{shiny:idle} is triggered
for the first time, \code{timeout} is taken into account.
}

When using \code{timeout} or \code{auto}, you can still remove the busy indicator with \code{remove_start_up}.
}
\examples{
# with timeout ------------------------------------------------------------

library(shiny)
library(shinybusy)

ui <- fluidPage(

  busy_start_up(
    loader = spin_epic("orbit", color = "#FFF"),
    text = "Loading...",
    timeout = 1500,
    color = "#FFF",
    background = "#112446"
  ),

  tags$h1("Ready to play!", class = "text-center")

)

server <- function(input, output, session) {

}

if (interactive())
  shinyApp(ui, server)

# manual ------------------------------------------------------------------

library(shiny)
library(shinybusy)

ui <- fluidPage(

  busy_start_up(
    loader = spin_kit(
      spin = "cube-grid",
      color = "#FFF",
      style = "width:50px; height:50px;"
    ),
    text = "Loading...",
    mode = "manual",
    color = "#FFF",
    background = "#112446"
  ),

  tags$h1("Ready to play!", class = "text-center")

)

server <- function(input, output, session) {

  # Remove after 3 seconds (+timeout)
  observe({
    Sys.sleep(3)
    remove_start_up(timeout = 200)
  })

}

if (interactive())
  shinyApp(ui, server)


# auto & GIF --------------------------------------------------------------

library(shiny)
library(shinybusy)

ui <- fluidPage(

  busy_start_up(
    loader = tags$img(
      src = "https://jeroen.github.io/images/banana.gif",
      width = 100
    ),
    text = "Loading...",
    mode = "auto"
  ),

  tags$h1("Ready to play!", class = "text-center"),
  plotOutput(outputId = "plot")

)

server <- function(input, output, session) {

  output$plot <- renderPlot({
    Sys.sleep(2)
    plot(rnorm(100))
  })

}

if (interactive())
  shinyApp(ui, server)
}
