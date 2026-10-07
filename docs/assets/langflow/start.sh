#!/usr/bin/env bash
set -euo pipefail

WORKSHOP_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
LANGFLOW="$WORKSHOP_DIR/.venv/bin/langflow"
if [[ ! -x "$LANGFLOW" ]]; then
    printf '%s\n' 'Please run bash setup.sh first.' >&2
    exit 1
fi

# The local database is the working copy. Import workshop flows once in the UI.
unset LANGFLOW_LOAD_FLOWS_PATH LANGFLOW_DATABASE_URL
export LANGFLOW_CONFIG_DIR="$WORKSHOP_DIR/.langflow-data"
export LANGFLOW_SAVE_DB_IN_CONFIG_DIR=True
export LANGFLOW_AUTO_LOGIN=True
export LANGFLOW_REMOVE_API_KEYS=False
export DO_NOT_TRACK=True
mkdir -p "$LANGFLOW_CONFIG_DIR"
cd -- "$WORKSHOP_DIR"
exec "$LANGFLOW" run --host 127.0.0.1 --port 7860 --open-browser
