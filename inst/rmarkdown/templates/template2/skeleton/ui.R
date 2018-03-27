

## User interface
ui <- dashboardPage(skin=skin_colour,
                    dashboardHeader(title = "Shiny template"),
                    dashboardSidebar(
                      sidebarMenu(
                        ## ---- Add Form fields here ---- #
                        hr(),
                        fluidRow(
                          column(2, h6(" ")),
                          column(8, numericInput(
                            inputId="numericIn", label=" numeric [0,10]", value=1,
                            min=0, max=10, step=1
                          ))
                        ),
                        fluidRow(
                          column(2, h6(" ")),
                          column(8, textInput(
                            inputId="textIn", label="text"
                          ))
                        ),
                        fluidRow(
                          column(2, h6(" ")),
                          column(8, radioButtons(
                            inputId="radioIn", label="radio buttons",
                            choices=LETTERS[1:3], selected="A"
                          ))
                        ),
                        fluidRow(
                          column(4, h6(" ")),
                          column(8, actionButton(inputId="goButton", "Go!"))
                        ),
                        hr(),
                        ## ------------------------------ #

                        ## Dynamic side bar menu
                        sidebarMenuOutput("menu")
                      )
                    ),
                    dashboardBody(
                      tabItems(

                        # Fourth tab content
                        tabItem(tabName = "specs",
                                fluidRow(
                                  box(title="Shiny resources", status = "primary", width=6, solidHeader = TRUE,
                                      collapsible = TRUE,
                                      shiny::a("Shiny website", href="http://shiny.rstudio.com/"), br(),
                                      shiny::a("Cheatsheet", href="http://shiny.rstudio.com/images/shiny-cheatsheet.pdf"), br(),
                                      shiny::a("Shiny examples", href="https://github.com/rstudio/shiny-examples")
                                  )
                                )
                        ),

                        # Fifth tab content
                        tabItem(tabName = "session",
                                box(title = "reactivevalues input$... variables", status = "primary", width=6, solidHeader = TRUE,
                                    collapsible = TRUE, tableOutput("input_variables")),
                                box(title = "sessionInfo()", status = "primary", width=12, solidHeader = TRUE,
                                    collapsible = TRUE, verbatimTextOutput("sessionInfo"))
                        )
                      )
                    )
)
