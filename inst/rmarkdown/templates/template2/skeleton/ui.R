

## User interface
ui <- fluidPage(
  sidebarLayout(
    # Sidebar with a slider input
    sidebarPanel(
      ## ---- Add Form fields here ---- #
      hr(),
      fluidRow(
        column(2, h6(" ")),
        column(8, numericInput(
          inputId="numericInput", label=" numeric [0,10]", value=1,
          min=0, max=10, step=1
        ))
      ),
      fluidRow(
        column(2, h6(" ")),
        column(8, textInput(
          inputId="textInput", label="text"
        ))
      ),
      fluidRow(
        column(2, h6(" ")),
        column(8, radioButtons(
          inputId="radioInput", label="radio buttons",
          choices=LETTERS[1:3], selected="A"
        ))
      ),
      fluidRow(
        column(4, h6(" ")),
        column(8, actionButton(inputId="goButton", "Go!"))
      ),
      hr()
    ),
    mainPanel(
      tableOutput(outputId = "input_variables"),
      verbatimTextOutput(outputId = "sessionInfo")
    )
  )
)


