This is a Shiny application template 

It provides session information, and a help page to shiny documentation

Alter the section;

```R
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
```
in the file [ui.R](PFRdataCraft/DataHandling/shiny/template/ui.R) to alter form variables in the sidebar.

## Unit testing

The subdirectory [test](RWorkshops/DataVisualization/Part_2/examples/template1/tests) contains a function [testthat.R](RWorkshops/DataVisualization/Part_2/examples/template1/tests/testthat.R) which runs available unit
tests in [test/testthat](RWorkshops/DataVisualization/Part_2/examples/template1/tests/testthat).

Individiual test files can be run interactively, or the entire suite run from the command line;


```bash
$ cd PFRdataCraft/DataHandling/shiny/template/test

## Two unit tests pass
$ Rscript testthat.R
Test global.R functions: ..

DONE ===========================================================================
```
