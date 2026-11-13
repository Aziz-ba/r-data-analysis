# 📊 R Data Analysis - Regression, Classification & Football Analytics

A consolidated tour of **data analysis and machine learning in R**: linear regression,
binary classification with hand-built evaluation metrics, and an exploratory sports-analytics
study - all tied together in one narrative report.

👉 **Start here:** [`analysis.Rmd`](analysis.Rmd) - a knittable R Markdown report that walks
through every analysis with question → method → interpretation. The original per-exercise
scripts are kept under [`TD1/`](TD1/), [`TP1/`](TP1/) and [`ExamenR/`](ExamenR/).

---

## 📑 What's inside

| Section | Dataset | Technique |
|---------|---------|-----------|
| **Marketing mix** | `datarium::marketing` | Multiple linear regression - which ad channel drives sales |
| **Boston housing** | `MASS::Boston` | Regression + correlation heatmap - drivers of home value (`lstat`, `rm`) |
| **Social Network Ads** | `Social_Network_Ads.csv` | Logistic regression + confusion-matrix metrics (accuracy / specificity / sensitivity) |
| **Ligue 1 2017/18** | `ligue1_17_18.csv` | Exploratory football analytics (possession, goal difference vs points) |
| **Network viz** | `TP1/*.Rmd` | Data-visualization exercises |

---

## 🔑 Highlights

- **Interpretation over black boxes** - the classification section computes accuracy,
  specificity and sensitivity **by hand** from the confusion matrix, so the trade-offs are explicit.
- **Feature reasoning** - correlation heatmaps and coefficient reading, not just fitting.
- **A real domain question** on Ligue 1 data (what separates the top of the table).

---

## 🚀 Reproduce it

### Requirements & R Version

- **R version:** R ≥ 4.0.0
- **RStudio** (optional, recommended for interactive R Markdown editing)

### Environment Setup & Execution

To restore package dependencies using [`renv`](https://rstudio.github.io/renv/):

```r
# Restore project package versions
renv::restore()

# Render report to HTML
rmarkdown::render("analysis.Rmd")   # produces analysis.html
```

Alternatively, install required packages manually:

```r
install.packages(c("MASS", "datarium", "ggplot2", "corrplot", "dplyr", "rmarkdown", "renv"))
rmarkdown::render("analysis.Rmd")   # produces analysis.html
```

Or open any script in `TD1/` / `TP1/` in RStudio and run it directly.

### Session Info

Inspect active session details and loaded packages by running `sessionInfo()` in R:

```r
sessionInfo()
```

Example `sessionInfo()` output:
```text
R version 4.2.2 (2022-10-31)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 22.04 LTS

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] ggplot2_3.4.0  corrplot_0.92  MASS_7.3-58.1  datarium_0.1.0
```

---

## 🛠️ Tech Stack

![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)
![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=flat-square&logo=rstudio&logoColor=white)

R · MASS · datarium · ggplot2 · corrplot · R Markdown

---

## 📄 License

Released under the [MIT License](LICENSE).
