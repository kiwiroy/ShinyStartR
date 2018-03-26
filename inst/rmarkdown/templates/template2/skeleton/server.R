

## Debug variables
DEBUG <- FALSE
if (DEBUG) {
  input <- list()
  input$goButton        <- 0
}


# Define server logic required to draw a histogram
server <- shinyServer(function(input, output, session) {

  output$input_variables <- renderTable({
    ## Take a dependency on input$goButton
    # input$goButton
    # isolate(
    inputs <- data.frame(Keys = names(reactiveValuesToList(input)),
                         Values = unname(unlist(lapply(reactiveValuesToList(input), function(x){toString(x[[1]])})))
    #)
    )
    return(inputs)
  })

  output$sessionInfo <- renderPrint({
    sessionInfo()
  })


})

