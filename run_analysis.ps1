# PowerShell helper to create venv, install requirements, and open the notebook
param(
    [switch]$RecreateVenv
)

# Create venv folder name
$venv = ".venv"

if ($RecreateVenv -or -not (Test-Path $venv)) {
    Write-Host "Creating virtual environment in $venv..."
    python -m venv $venv
}

# Activate the virtual environment for the current session
$activate = Join-Path $venv "Scripts\Activate.ps1"
if (Test-Path $activate) {
    Write-Host "Activating virtual environment..."
    . $activate
} else {
    Write-Warning "Activation script not found. Make sure Python venv created successfully." 
}

# Upgrade pip and install requirements
Write-Host "Upgrading pip and installing requirements..."
python -m pip install --upgrade pip
pip install -r requirements.txt

# Launch Jupyter Notebook
Write-Host "Launching Jupyter Notebook..."
jupyter notebook "Data_Analytics_Assignment_FoodExpress_Platform.ipynb"
