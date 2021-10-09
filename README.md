# 予定を管理するAPIサーバ

## 基本構成

Azure上で以下コンポーネントを利用する。

コンポーネント名 | 概要
-----------------|------------------------------------------------
Function         | 外部からのRequestに対するレスポンスを返却する。
Cosmos DB        | 設定値以外の全データを格納する。

```text
          +- Azure ------------------------+
 Request  | +-----------+   +-----------+  |
 -----------> Function  ----> Cosmos DB |  |
          | +-----------+   +-----------+  |
          +--------------------------------+
```
