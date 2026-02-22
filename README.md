# Macroeconomics

bash```

README.md
├── LICENSE
├── CITATION.cff
├── .gitignore
├── environment.yml / pyproject.toml / renv.lock   # choose your ecosystem
├── data/
│   ├── raw/            # NOT committed (or only small public samples)
│   ├── external/       # downloaded series (FRED/OECD/IMF)
│   ├── processed/      # cleaned, merged, final datasets (often not committed)
│   └── sample/         # tiny example dataset committed for quick tests
├── src/
│   └── macro_project/
│       ├── __init__.py
│       ├── data/
│       │   ├── download_fred.py
│       │   ├── download_oecd.py
│       │   ├── cleaning.py
│       │   └── transforms.py      # log, yoy, hp-filter, deflators, etc.
│       ├── models/
│       │   ├── var.py
│       │   ├── state_space.py     # Kalman filter, trend-cycle
│       │   ├── dsge/              # (optional) Dynare/Julia/Python code
│       │   └── forecast.py
│       ├── estimation/
│       │   ├── bayesian.py        # MCMC / priors (if applicable)
│       │   └── gmm_ml.py
│       ├── evaluation/
│       │   ├── metrics.py         # RMSE, log score, Diebold-Mariano
│       │   └── backtests.py
│       └── plotting/
│           ├── irfs.py
│           ├── decomposition.py
│           └── charts.py
├── notebooks/           # exploration only
├── figures/             # exported charts for paper/slides
├── tables/              # exported regression tables / moments / estimates
├── paper/               # LaTeX source (if it’s a paper)
│   ├── main.tex
│   ├── references.bib
│   └── appendix.tex
├── scripts/
│   ├── 01_download_data.sh
│   ├── 02_build_dataset.sh
│   ├── 03_estimate_model.sh
│   └── 04_make_figures.sh
├── configs/
│   ├── data_sources.yaml
│   ├── baseline.yaml
│   └── robustness.yaml
├── results/
│   ├── estimates/
│   ├── forecasts/
│   └── logs/
└── .github/workflows/
    └── ci.yml


```
