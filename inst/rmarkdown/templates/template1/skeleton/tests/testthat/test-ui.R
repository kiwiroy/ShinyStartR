context("Test ui.R interface")

require("shiny")

test_that("Test ui.R", {
  ## Load ui
  source("../../ui.R")

  ## ui functions, list in https://shiny.rstudio.com/tutorial/written-tutorial/lesson3/

  ## All shiny functions
  shiny_objs  <- ls(pos=grep("shiny$", search()))
  ## Input and Button functions
  input_objs  <- shiny_objs[grepl("input", shiny_objs, ignore.case=TRUE) & !grepl("update", shiny_objs, ignore.case=TRUE)]
  button_objs <- shiny_objs[grepl("button", shiny_objs, ignore.case=TRUE) & !grepl("update", shiny_objs, ignore.case=TRUE)]

  ## Extract tags
  input_matches <- gregexpr("<input.+?>", ui)
  input_tags <- substring(ui, input_matches[[1]], input_matches[[1]] + attributes(input_matches[[1]])$match.length-1)

  button_matches <- gregexpr("<button.+?>", ui)
  button_tags <- substring(ui, button_matches[[1]], button_matches[[1]] + attributes(button_matches[[1]])$match.length-1)

  ## testthat for each tag
  expect_match(input_tags[1], '<input id="numericInput" type="number" class="form-control" value="1" min="0" max="10" step="1"/>')
  expect_match(input_tags[2], '<input id="textInput" type="text" class="form-control" value=""/>')
  expect_match(input_tags[3], '<input type="radio" name="radioInput" value="A" checked="checked"/>')
  expect_match(input_tags[4], '<input type=\"radio\" name=\"radioInput\" value=\"B\"/>')
  expect_match(input_tags[5], '<input type=\"radio\" name=\"radioInput\" value=\"C\"/>')

  expect_match(button_tags[1], "<button id=\"goButton\" type=\"button\" class=\"btn btn-default action-button\">")

  ## test of length of expected inputs/buttons
  expect_equal(length(input_tags), 5L)
  expect_equal(length(button_tags), 1L)
  })
