#!/bin/bash
set -e

# Aktifkan virtual environment
source /venv/bin/activate

# Jalankan perintah yang diberikan ke container
exec "$@"
