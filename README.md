# Data Analytics Assignment — FoodExpress Platform

## Project Overview
This repository contains a Jupyter notebook implementing a data analytics assignment for the FoodExpress platform. The analysis covers data cleaning, feature engineering, visualization, and statistical testing performed in the notebook `Data_Analytics_Assignment_FoodExpress_Platform.ipynb`.

## Contents
- `Data_Analytics_Assignment_FoodExpress_Platform.ipynb` — The main analysis notebook.
- `foodexpress_data_uncleaned - foodexpress_data_uncleaned.csv` — Raw dataset (already present in the workspace).
- `requirements.txt` — Python dependencies required to run the notebook.
- `run_analysis.ps1` — PowerShell helper to create a virtual environment, install dependencies, and launch the notebook.

## Prerequisites
- Windows (tested), PowerShell available.
- Python 3.9+ installed and available on PATH.
- Git (optional) if you want to version-control the project.

## Quick setup (recommended)
Open PowerShell in this folder and run:

```powershell
# Create a virtual environment, install dependencies, and open the notebook
.\run_analysis.ps1
```

Manual steps:
1. Create and activate a virtual environment:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

2. Install dependencies:

```powershell
pip install -r requirements.txt
```

3. Launch Jupyter Notebook:

```powershell
jupyter notebook "Data_Analytics_Assignment_FoodExpress_Platform.ipynb"
```

## Notes on the Notebook
- The notebook reads `foodexpress_data_uncleaned - foodexpress_data_uncleaned.csv` from the workspace root. Ensure the CSV is present before running cells.
- The notebook includes data cleaning steps (missing value handling, type conversions), visualizations (matplotlib/seaborn/plotly), and statistical tests using `scipy` and `statsmodels`.

## Files to edit / customize
- If your Python executable is different (for example `python3`), change the commands in `run_analysis.ps1` accordingly.

## Troubleshooting
- If package installation fails, upgrade `pip`: `python -m pip install --upgrade pip` and rerun installation.
- If Jupyter doesn't open in the browser, run `jupyter notebook --no-browser --ip=127.0.0.1` and open the provided URL.

## Contact
If you want changes or additional scripts (automated tests, export scripts, or output notebooks), tell me what to add.
