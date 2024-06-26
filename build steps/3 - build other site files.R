
# Code for index.Rmd file
index <- "---
title: '&#32;'
---"

# Generate index file
file_connection <- file("index.Rmd")
writeLines(index, file_connection)
close(file_connection)

# Code for _site.yml file
site <- "name: '&#32;'
exclude: ['build steps', '*.csv']
output_dir: docs"

# Generate _site.yml file
file_connection <- file("_site.yml")
writeLines(site, file_connection)
close(file_connection)
