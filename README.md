# 提出QUEST

## ステップ1: テーブル設計

### episodes
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
|episode_id| int |NOT |PRIMARY ||YES|
|episode_name| varchar(2000)|||NULL|
|episode_no| int |||DEFAULT||
|episode_details| varchar(2000)|||NULL||
|series| int |||NULL||
|title_id| char(8) ||| NULL||

※一意制約：title_id,episode_no,seriesに対して、一意の制約
※外部キー制約：title_id に対して、programs テーブルの title_idカラムから設定


### genre
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
|genre_id| char(8) |NOT |PRIMARY |||
|genre| varchar(100)|||NULL|


### programs
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
|title_id|char(8) |NOT|PRIMARY |||
|title|varchar(100)|||NULL|
|genre_id|char(8)|||NULL|

※外部キー制約：genre_id に対して、genre テーブルの genre_idカラムから設定


### tv_schedule
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
|start_time| datetime |||NULL||
|end_time|datetime|||NULL|
|ch| int |||NULL||
|episode_id|int|||NULL||
|viewer| int |||NULL||
|id|int |NOT |PRIMARY ||YES|

※外部キー制約：episode_id に対して、episodes テーブルの episode_idカラムから設定


## ステップ2: 
データベースの作成方法は以下の資料に記載しております。
https://docs.google.com/spreadsheets/d/1K2R0FrHGfNNYfnSIbVtJUYZtgjRVwLXRMcjXpK2euPk/edit?usp=sharing

   
## ステップ３: 
各クエリを「Step3-1.sql」...に記載しております。


