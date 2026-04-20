#!/usr/bin/env bash
set -euo pipefail

# Run the script from the repository root directory. Move the stylesheet there as well, or adjust the path below.
STYLESHEET="fix-screen-prompt.xsl"

# Check the tools
command -v xsltproc >/dev/null 2>&1 || { echo "Missing xsltproc."; exit 1; }
command -v sponge   >/dev/null 2>&1 || { echo "Missing sponge (the moreutils package)."; exit 1; }

# Zpracuj jen uvedené jazyky
LANG_DIRS=(
  "l10n/de-de/xml"
  "l10n/es-es/xml"
  "l10n/fr-fr/xml"
  "l10n/ja-jp/xml"
  "l10n/pt-br/xml"
  "l10n/zh-cn/xml"
)

# Find all *.xml and transfor all of them
# -print0 + read -d '' s
find "${LANG_DIRS[@]}" -type f -name '*.xml' -print0 \
| while IFS= read -r -d '' file; do
    echo "→ Processing: $file"
    # xsltproc -> sponge for "in-place" overwrite
    xsltproc "$STYLESHEET" "$file" | sponge "$file"
  done

echo "Done."