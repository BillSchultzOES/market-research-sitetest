
# Save the desired Template.Rmd file as multiline text
# (makes it easy to generate this .Rmd template temporarily
# and then delete it when done, without rendering it upon build).
code <- "
---
params:
  combination:
title: 'Candidate SSBs for this opportunity'
output: 
  html_document:
    includes:
       in_header: gtag_test2.html
---

```{r setup, include=FALSE, message=FALSE, warning=FALSE}

# Don't echo code chunks
knitr::opts_chunk$set(echo = F)

```

```{r maketable, message=FALSE, warning=FALSE}

# Use data tables (javascript backend).
# Allows sorting.
library(DT)

# Load test list
df <- read.csv('site data/test_list.csv')

# Subset to NAICS/PSC combination
# (this is rmd file is compiled in a loop in the other rmd file;
# this parameter is set there).
df <- df[df$id %in% params$combination,]

# Generate table (customize later)
DT::datatable(df, rownames = F)

```
"

# Generate file containing the template (deleted later)
file_connection <- file("Template.Rmd")
writeLines(code, file_connection)
close(file_connection)
