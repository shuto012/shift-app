# アプリケーション名
シフト管理アプリ

# アプリケーション概要
シフト提出、確認、作成ができる

# URL
デプロイ後記載

# テスト用アカウント
ログイン機能実装次第記載

# 利用方法
## シフト提出
1.ユーザー新規登録を行う
2.シフト提出ボタンから提出ページに遷移
3.出勤時間、退勤時間、任意でコメントを入力する
4.入力できたら提出ボタンを押す

## 
# アプリケーションを作成した背景
シフトの提出をパソコンからできるようにすることで紙を用意してお店に提出しにいく手間を省きたい
# 洗い出した要件
要件を定義したシート
https://docs.google.com/spreadsheets/d/1ARhA8swFtmjjV-4SiFulrncpOiGHK_GC-YMno7H9w-M/edit#gid=982722306
# 実装した機能についての画像やGIFおよびその説明
実装後記載

# 実装予定の機能
現在、ユーザー管理機能実装中
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/2b4054640cbc7d93831205f328ff26aa.png)](https://gyazo.com/2b4054640cbc7d93831205f328ff26aa)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/3152537f0dfd7d861b8a44c0688a2abd.png)](https://gyazo.com/3152537f0dfd7d861b8a44c0688a2abd)

# 開発環境
使用した言語など

# ローカルでの動作方法
完成後記載

# 工夫したポイント
完成後記載




# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| number             | integer | null: false               |

### Association
- has_many :shifts

## shifts テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| start_time         | datetime   | null: false                    |
| finish_time        | datetime   | null: false                    |
| comment            | text       |                                |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user