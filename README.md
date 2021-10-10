# 予定を管理するAPIサーバ

## システム構成

Azure上で以下コンポーネントを利用する。

コンポーネント名  | 概要
----------------- | -------------------------------------------------
Function          | 外部からのRequestに対するレスポンスを返却する。
Cosmos DB         | 設定値以外の全データを格納する。
Azure AD          | Function, Cosmos DBにログイン時の認証に利用する。

```text
          +- Azure AD ---------------------+
 Request  | +-----------+   +-----------+  |
 -----------> Function  ----> Cosmos DB |  |
          | +-----------+   +-----------+  |
          +--------------------------------+
```

## ディレクトリ構成

```text
.
├── README.md:           全体の説明
├── docker-compose.yml:  開発時に利用
├── Dockerfile:          開発時に利用
├── getting_started.md:  azure functionのtemplateと共に自動生成
├── host.json:           azure functionの設定
├── local.settings.json: azure functionのローカル設定
├── requirements.txt:    ビルド時に必要なパッケージ
└── ownsecretary
    ├── function.json:   functionの設定情報
    ├── host.json:       function自体のルートパス、バージョン情報
    ├── app.py:          アプリ本体
    ├── __init__.py:     function.jsonの指定により最初に起動するソース
```
