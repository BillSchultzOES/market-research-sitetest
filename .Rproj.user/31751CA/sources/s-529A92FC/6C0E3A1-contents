
# Load test list
df <- read.csv("site data/test_list.csv")

# Create static directory (for HTML files) if not already created
dir.create(file.path("ssblist"), showWarnings = FALSE)

# Loop through IDs (NAICS/PSC combinations),
# rendering an html file for each.
i <- 1
for (i in unique(df$id)) {
  
  # Render an html file...
  rmarkdown::render(
    'Template.Rmd', #... from this template...
    params = list(combination = i), #... for this code combination...
    output_file = paste0("ssblist/test", i, ".html"), #... and save the result here.
    quiet = T
    )
  
}

# Get some warning messages about deprecation...
# Not likely an issue within study timeframe?
