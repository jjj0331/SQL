/*よく見られているエピソードの番組情報やシーズン情報も合わせて知りたいです。
  エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得してください*/
SELECT 
T3.title,
episode_name,
episode_no,
series,
viewer
FROM tv_schedule T1
left join episodes T2
on T1.episode_id=T2.episode_id
left join programs T3
on T2.title_id=T3.title_id and T1.episode_id=T2.episode_id
order by viewer desc
limit 3;