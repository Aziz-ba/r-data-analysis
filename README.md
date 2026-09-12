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

```r
install.packages(c("MASS", "datarium", "ggplot2", "corrplot", "dplyr"))
rmarkdown::render("analysis.Rmd")   # produces analysis.html
```

Or open any script in `TD1/` / `TP1/` in RStudio and run it directly.

---

## 🛠️ Tech Stack

![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)
![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=flat-square&logo=rstudio&logoColor=white)

R · MASS · datarium · ggplot2 · corrplot · R Markdown

---

## 📄 License

Released under the [MIT License](LICENSE).
