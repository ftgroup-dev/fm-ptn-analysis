# fm-ptn-analysis
パートナー事業部の集計システム

# 使用方法
FileMakerファイルからxmlファイルを出力して、utf-8に変換の上、scriptフォルダに配置して以下コマンド実行

なお、ファイル名は固定で[PartnerManagementSystem_fmp12.xml]としてください。

実行コマンド
```
.export_ddr.sh
```

# フォルダ構成
```
├── .gitignore
├── README.md
├── analysis　　　　　　　　　　　　　　　　　　　 ← FMPerceptionでのレビュー記録など
├── ddr　　　　　　　　　　　　　　　　　　　　　  ← 最新のXML DDR出力済ファイル
│   ├── AccountCatalog.xml
│   ├── CustomFunctionCatalog.xml
│   ├── CustomMenuCatalog.xml
│   ├── CustomMenuSetCatalog.xml
│   ├── ExtendedPrivilegeCatalog.xml
│   ├── ExternalDataSourcesCatalog.xml
│   ├── LayoutCatalog.xml
│   ├── PrivilegesCatalog.xml
│   ├── ScriptCatalog.xml
│   ├── ValueListCatalog.xml
│   └── archive　　　　　　　　　　　　　　　　　　← バックアップ用の履歴
├── release
│   └── PartnerManagementSystem_20250402.fmp12　← リリース版（手動で追加、追跡は非推奨）
└── scripts
    ├── PartnerManagementSystem_fmp12.xml       ← 最新のXML DDRファイル
    └── export_ddr.sh                           ← XML DDR出力補助スクリプト（手動）
```

