
# Create data directory if not already created
dir.create(file.path("site data"), showWarnings = FALSE)

# Small simulate data table
df <- tibble(
  id = rep.int(1:4, 2),
  name = rep.int(c("a", "b"), 4),
  val = round(rnorm(8, 0, 1), 3)
  )

# Save as csv
write.csv(df, "site data/test_list.csv", row.names = F)
