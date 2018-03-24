## ShinyStartR

Start a new with a templated R shiny application.

## Installation

```R
devtools::install_github('kiwiroy/ShinyStartR')
```

## Usage

From the menu select

**File** -> **New File** -> **R Markdown...**

In the resulting dialog select **From Template** in the left half of the dialog
to show available templates. These will be labelled with **{ShinyStartR}** and
will show with any others that have been installed.

**In code**

```R
library(rmarkdown)
draft("new-analysis.Rmd", template = "<template-name>", package = "ShinyStartR")
## where <template-name> is the name of one of the available templates.
```

## Creating new templates

See the [contribution guide](CONTRIBUTING.md)
