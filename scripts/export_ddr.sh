#!/bin/bash

# 入力ファイル名
INPUT_FILE="PartnerManagementSystem_fmp12.xml"

# 出力ディレクトリ
OUTPUT_DIR="../ddr"

# 出力ファイル名
ACCOUNT_OUTPUT="$OUTPUT_DIR/AccountCatalog.xml"
SCRIPT_OUTPUT="$OUTPUT_DIR/ScriptCatalog.xml"

# XMLヘッダー
HEADER="<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

# AccountCatalog の抽出
awk -v header="$HEADER" '/<AccountCatalog>/,/<\/AccountCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$ACCOUNT_OUTPUT"

echo "AccountCatalog.xml を $OUTPUT_DIR に作成しました。"

# ScriptCatalog の抽出
awk -v header="$HEADER" '/<ScriptCatalog>/,/<\/ScriptCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$SCRIPT_OUTPUT"

echo "ScriptCatalog.xml を $OUTPUT_DIR に作成しました。"
