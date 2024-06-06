
# Packages used?
library(tidyverse)

# Seed (random data generate, current step 1)
set.seed(20405)

# (For this test site; in real project will be final cleaning?)
# 1: Run the script to generate example data
source("build steps/1 - generate test list.R")

# 2: Build the .Rmd template for each NAICS/PSC table page
# (control how the table pages look here)
source("build steps/2 - build template.R")

# 3: Loop thorugh NAICS/PSC and render an HTML table page for each
# (template created above has a free parameter for NAICS/PSC code;
# this loop just iteratively plugs in new codes and re-renders the template.)
source("build steps/3 - make files from template.R")

# 4: Remove template (no longer needed)
file.remove("Template.Rmd")

# 5: Build other necessary site files (index.Rmd and _site.yml)
source("build steps/5 - build other site files.R")

# 6: Render site
rmarkdown::render_site(encoding = 'UTF-8')

# 7: Clean up things copied to _site and no longer
# needed in the main directory
unlink("ssblist", recursive = TRUE)
unlink("site data", recursive = TRUE)
