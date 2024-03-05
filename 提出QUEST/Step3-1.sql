/*よく見られているエピソードを知りたいです。エピソード視聴数トップ3のエピソードタイトルと視聴数を取得してください*/
SELECT 
episode_name,
viewer
FROM tv_schedule T1
left join episodes T2
on T1.episode_id=T2.episode_id
order by viewer desc
limit 3;