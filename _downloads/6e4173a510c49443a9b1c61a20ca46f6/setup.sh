#!/usr/bin/env bash
set -euo pipefail

WORKSHOP_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
if ! command -v uv >/dev/null 2>&1; then
    printf '%s\n' 'Please install uv first, then reopen your terminal. See the Langflow preparation page.' >&2
    exit 1
fi

uv python install 3.12
if [[ ! -d "$WORKSHOP_DIR/.venv" ]]; then
    uv venv --python 3.12 "$WORKSHOP_DIR/.venv"
fi
uv pip install --python "$WORKSHOP_DIR/.venv/bin/python" \
    'langflow==1.12.0' 'langflow-base==1.12.0'
printf '%s\n' 'Checking Langflow imports...'
"$WORKSHOP_DIR/.venv/bin/python" -c 'import elevenlabs; from langflow.__main__ import main'
printf '%s\n' 'Setup complete. Run: bash start.sh (from this workshop folder).'
