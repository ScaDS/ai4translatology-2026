$ErrorActionPreference = 'Stop'

$Venv = Join-Path $env:LOCALAPPDATA 'ai4t\lf-1.12'
$Langflow = Join-Path $Venv 'Scripts\langflow.exe'
if (-not (Test-Path $Langflow)) {
    throw 'Please run the updated setup.ps1 first. Windows now uses a short environment path under LOCALAPPDATA.'
}

# The local database is the working copy. Import workshop flows once in the UI.
# Restore the calling PowerShell session's environment when Langflow stops.
$Settings = @{
    LANGFLOW_LOAD_FLOWS_PATH = $null
    LANGFLOW_DATABASE_URL = $null
    LANGFLOW_CONFIG_DIR = (Join-Path $PSScriptRoot '.langflow-data')
    LANGFLOW_SAVE_DB_IN_CONFIG_DIR = 'True'
    LANGFLOW_AUTO_LOGIN = 'True'
    LANGFLOW_REMOVE_API_KEYS = 'False'
    DO_NOT_TRACK = 'True'
}
$Previous = @{}
foreach ($Name in $Settings.Keys) {
    $Previous[$Name] = [Environment]::GetEnvironmentVariable($Name, 'Process')
    [Environment]::SetEnvironmentVariable($Name, $Settings[$Name], 'Process')
}

try {
    New-Item -ItemType Directory -Force -Path $Settings.LANGFLOW_CONFIG_DIR | Out-Null
    Push-Location $PSScriptRoot
    try {
        & $Langflow run --host 127.0.0.1 --port 7860 --open-browser
        if ($LASTEXITCODE -ne 0) { throw 'Langflow stopped with an error. Check the terminal output.' }
    }
    finally { Pop-Location }
}
finally {
    foreach ($Name in $Previous.Keys) {
        [Environment]::SetEnvironmentVariable($Name, $Previous[$Name], 'Process')
    }
}
