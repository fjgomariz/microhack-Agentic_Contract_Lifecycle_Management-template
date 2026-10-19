#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing Python dependencies"
python -m pip install --upgrade pip
python -m pip install -r src/requirements.txt

echo "==> Creating the local environment file"
if [ ! -f .env ]; then
  cp src/.env.example .env
fi

echo ""
echo "============================================================"
echo " Ready. Next steps:"
echo "   1. az login --use-device-code"
echo "   2. azd auth login"
echo "   3. cd src && azd up"
echo "   4. cd .. && python src/scripts/seed_corpus.py"
echo "   5. python src/scripts/smoke_test.py"
echo "============================================================"
