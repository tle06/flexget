#!/usr/bin/bash
# Check if config.yml exists. If not, copy in
if [ -f /config/config.yml ]; then
  echo "[Init] Using existing config.yml"
else
  echo "[Init] New config.yml from template"
  touch /config/config.yml
  echo "task:" >> /config/config.yml
fi