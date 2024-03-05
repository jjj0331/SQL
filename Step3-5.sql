/*(advanced) 
直近一週間で最も見られた番組が知りたいです。
直近一週間に放送された番組の中で、エピソード視聴数合計トップ2の番組に対して、番組タイトル、視聴数を取得してください*/
select
(select T2.title from programs T2 where T1.title_id=T2.title_id ) as '番組タイトル',
sum(viewer) as viewer
from v_tv_schedule T1
where DATE_FORMAT(start_time, '%Y%m%d')  between DATE_FORMAT(NOW(), '%Y%m%d') and DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 7 DAY), '%Y%m%d')
GROUP BY episode_id
ORDER BY viewer desc limit 2;
