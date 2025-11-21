#!/bin/bash

# 入力ファイル名
INPUT_FILE="PartnerManagementSystem_fmp12.xml"

# UTF-16 BOM付き → UTF-8 に変換し、同じファイル名に上書き
iconv -f UTF-16 -t UTF-8 "$INPUT_FILE" \
  | perl -pe 's/\x0D\x0A?/\x0A/g' \
  > "${INPUT_FILE}.tmp" && mv -f "${INPUT_FILE}.tmp" "$INPUT_FILE"


# 出力ディレクトリ
OUTPUT_DIR="../ddr"

# 出力ファイル名
ACCOUNT_OUTPUT="$OUTPUT_DIR/AccountCatalog.xml"
SCRIPT_OUTPUT="$OUTPUT_DIR/ScriptCatalog.xml"
PRIVILEG_OUTPUT="$OUTPUT_DIR/PrivilegesCatalog.xml"
EXTEND_PRIVILEG_OUTPUT="$OUTPUT_DIR/ExtendedPrivilegeCatalog.xml"
CUSTOM_MENU_OUTPUT="$OUTPUT_DIR/CustomMenuCatalog.xml"
CUSTOM_MENU_SET_OUTPUT="$OUTPUT_DIR/CustomMenuSetCatalog.xml"
EXTERNAL_DATA_SOURCE_OUTPUT="$OUTPUT_DIR/ExternalDataSourcesCatalog.xml"
LAYOUT_OUTPUT="$OUTPUT_DIR/LayoutCatalog.xml"
CUSTOM_FUNCTION_OUTPUT="$OUTPUT_DIR/CustomFunctionCatalog.xml"
VALUE_LIST_OUTPUT="$OUTPUT_DIR/ValueListCatalog.xml"

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

# PrivilegesCatalog の抽出
awk -v header="$HEADER" '/<PrivilegesCatalog>/,/<\/PrivilegesCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$PRIVILEG_OUTPUT"

echo "PrivilegesCatalog.xml を $OUTPUT_DIR に作成しました。"

# ExtendedPrivilegeCatalog の抽出
awk -v header="$HEADER" '/<ExtendedPrivilegeCatalog>/,/<\/ExtendedPrivilegeCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$EXTEND_PRIVILEG_OUTPUT"

echo "ExtendedPrivilegeCatalog.xml を $OUTPUT_DIR に作成しました。"

# CustomMenuCatalog の抽出
awk -v header="$HEADER" '/<CustomMenuCatalog>/,/<\/CustomMenuCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$CUSTOM_MENU_OUTPUT"

echo "CustomMenuCatalog.xml を $OUTPUT_DIR に作成しました。"

# CustomMenuSetCatalog の抽出
awk -v header="$HEADER" '/<CustomMenuSetCatalog>/,/<\/CustomMenuSetCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$CUSTOM_MENU_SET_OUTPUT"

echo "CustomMenuSetCatalog.xml を $OUTPUT_DIR に作成しました。"

# ExternalDataSourcesCatalog の抽出
awk -v header="$HEADER" '/<ExternalDataSourcesCatalog>/,/<\/ExternalDataSourcesCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$EXTERNAL_DATA_SOURCE_OUTPUT"

echo "ExternalDataSourcesCatalog.xml を $OUTPUT_DIR に作成しました。"

# LayoutCatalog の抽出
awk -v header="$HEADER" '/<LayoutCatalog>/,/<\/LayoutCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$LAYOUT_OUTPUT"

echo "LayoutCatalog.xml を $OUTPUT_DIR に作成しました。"

# CustomFunctionCatalog の抽出
awk -v header="$HEADER" '/<CustomFunctionCatalog>/,/<\/CustomFunctionCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$CUSTOM_FUNCTION_OUTPUT"

echo "CustomFunctionCatalog.xml を $OUTPUT_DIR に作成しました。"

# ValueListCatalog の抽出
awk -v header="$HEADER" '/<ValueListCatalog>/,/<\/ValueListCatalog>/' "$INPUT_FILE" \
    | awk 'NR==1{print header} {print}' > "$VALUE_LIST_OUTPUT"

echo "ValueListCatalog.xml を $OUTPUT_DIR に作成しました。"

