#!/usr/bin/bash
# Check if .config-lock exists. If not, copy in
if [ -f /config/.config-lock ]; then
  echo "[Init] .config-lock detected"
  rm /config/.config-lock
  echo "[Init] .config-lock deleted"
else
  echo "[Init] .config-lock not here :)"
fi