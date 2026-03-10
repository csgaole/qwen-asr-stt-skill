#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="/home/legao/openclaw_workspace/qwen_asr_stt"
VENV_PY="$PROJECT_DIR/.venv/bin/python"
SCRIPT="$PROJECT_DIR/stt_qwen.py"

if [[ ! -x "$VENV_PY" ]]; then
  echo "[ERROR] Python venv not found: $VENV_PY" >&2
  exit 1
fi

exec "$VENV_PY" "$SCRIPT" "$@"
