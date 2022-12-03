# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |


## shiftsテーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| date               | date       | null: false                   |
| start_time         | time       | null: false, unique: true     |
| finish_time        | time       | null: false                   |
| user               | references | null:false, foreign_key :true |