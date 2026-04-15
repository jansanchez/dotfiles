#!/usr/bin/env bash
set -euo pipefail

sh -c "$(curl -fsLS get.chezmoi.io)"
chezmoi init --apply <TU_USUARIO>/<TU_REPO>

echo "Abre una nueva terminal y ejecuta: nvim"
