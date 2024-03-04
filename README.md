# SQL
■ファルダ構成
・設計書   ・・・テーブル定義およびデータが格納
・提出QUEST・・・ステップ3の回答SQLを格納

■テーブルの概要
・episodesテーブル
　→エピソード単位で、シリーズ数、話数、詳細の項目があり、title_id

・programs
　→番組名、genre_id,title_idを持つ

・genre
　→ジャンル(アニメ、映画など)をgenre_idで管理している。

・tv_schedule
　→放送の開始時間、終了時間。チャンネル、視聴者数などの項目を持ち、
　 episode_idで放送番組がわかる。
