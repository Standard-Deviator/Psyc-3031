# Generate all HTML exercises

library(here)
library(renv)

# load package versions stored in the lockfile
renv::restore()

# anova_oneway -------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "anova_oneway.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "anova_oneway"
)

# anova_rm -----------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "anova_rm.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "anova_rm"
)

# anova_twoway -------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "anova_twoway.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "anova_twoway"
)

# correlations -------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "correlations.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "correlations"
)

# Descriptive Statistics HTML ---------------------------------------------
rmarkdown::render(
  here("scripts",
       "descriptive-statistics.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "descriptive_statistics"
)

# Factors -----------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "factors.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "factors"
)

# Multiple Regression ---------------------------------------------------
rmarkdown::render(
  here("scripts",
       "multiple_regression.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "multiple_regression"
)

# power -----------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "power.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "power"
)

# simple Regression ---------------------------------------------------
rmarkdown::render(
  here("scripts",
       "simple_regression.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "simple_regression"
)

# t-tests -----------------------------------------------------------------
rmarkdown::render(
  here("scripts",
       "t_tests.Rmd"),
  output_dir = here("HTML Exercises"),
  output_file = "t_tests"
)
