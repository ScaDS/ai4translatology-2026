$ErrorActionPreference = 'Stop'

if (-not (Get-Command uv -ErrorAction SilentlyContinue)) {
    throw 'Please install uv first, then reopen PowerShell. See the Langflow preparation page.'
}

& uv python install 3.12
if ($LASTEXITCODE -ne 0) { throw 'Python installation failed.' }

# Some dependencies have very long filenames. Keep the environment outside
# deeply nested workshop/repository paths to avoid Windows MAX_PATH errors.
$Venv = Join-Path $env:LOCALAPPDATA 'ai4t\lf-1.12'
New-Item -ItemType Directory -Force -Path (Split-Path $Venv -Parent) | Out-Null
Write-Host "Installing Langflow in $Venv"
if (-not (Test-Path $Venv)) {
    & uv venv --python 3.12 $Venv
    if ($LASTEXITCODE -ne 0) { throw 'Creating the virtual environment failed.' }
}
$Python = Join-Path $Venv 'Scripts\python.exe'
& uv pip install --python $Python 'langflow==1.12.0' 'langflow-base==1.12.0'
if ($LASTEXITCODE -ne 0) { throw 'Langflow installation failed.' }

Write-Host 'Checking Langflow imports...'
& $Python -c 'import elevenlabs; from langflow.__main__ import main'
if ($LASTEXITCODE -ne 0) {
    throw 'Langflow import check failed. Keep the traceback and contact the organisers.'
}

Write-Host 'Setup complete. Run: powershell -ExecutionPolicy Bypass -File .\start.ps1'
