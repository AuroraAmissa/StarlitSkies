#!/bin/bash

. RulebookShared/build_common.sh
SOURCE_NAME="StarlitSkiesSources"

echo "Building Starlit Skies distribution..."
init_build $1 || exit 1

echo " - Creating Starlit Skies specific directories..."
mkdir -p build/out/"Character Sheets" || exit 1

# Starlit Skies
render_pdf Book_StarlitSkies "" "Starlit Skies$FILE_MAKER" || exit 1

# Build archives
create_archive "Starlit Skies$ZIP_FILE_BIND $ZVERSION" || exit 1
create_source_archive "StarlitSkiesSources$ZIP_FILE_BIND $ZVERSION" || exit 1
