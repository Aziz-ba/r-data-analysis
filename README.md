# 📊 R Data Analysis — Statistics, Machine Learning & Visualization

A collection of **data-analysis and machine-learning work in R**, covering regression, classification, exploratory data analysis and data visualization on real datasets.

---

## 📁 Contents

| Folder | Focus |
|--------|-------|
| [`TD1/`](TD1/) | Core modeling: linear regression on the **Boston housing** dataset (`MASS`), classification on **Social Network Ads**, and analysis of **Ligue 1 2017/18** football data |
| [`TP1/`](TP1/) | R Markdown notebooks — **data visualization**, network analysis, and applied statistics exercises |
| [`ExamenR/`](ExamenR/) | Exam exercises solved in R |

Datasets included: `Boston` (via the `MASS` package), [`Social_Network_Ads.csv`](TD1/Social_Network_Ads.csv), [`ligue1_17_18.csv`](TD1/ligue1_17_18.csv).

---

## 🔬 Techniques covered

- **Regression** — train/test splitting, linear models, prediction & error analysis
- **Classification** — predicting purchase behavior from demographic features
- **Exploratory data analysis** — summary statistics, distributions
- **Data visualization** — base R plots and `ggplot2`-style graphics in R Markdown
- **Reproducible reports** — analysis written as `.Rmd` notebooks

---

## 🚀 Run it

Open any script in **RStudio** and run it, or from the R console:

```r
# install once
install.packages(c("MASS", "ggplot2"))

source("TD1/Example1.R")
# or knit an R Markdown report:
rmarkdown::render("TP1/TP3_DataViz_Nom_Prenom.Rmd")
```

---

## 🛠️ Tech Stack

![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)
![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=flat-square&logo=rstudio&logoColor=white)
![R Markdown](https://img.shields.io/badge/R_Markdown-198CE7?style=flat-square&logo=r&logoColor=white)

R · MASS · ggplot2 · R Markdown · statistical modeling

---

## 📄 License

Released under the [MIT License](LICENSE).
