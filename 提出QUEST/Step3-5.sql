select
max(title) as '番組タイトル',
sum(viewer) as viewer
from v_tv_schedule T1
left join programs T2 on T1.title_id=T2.title_id
where DATE_FORMAT(start_time, '%Y%m%d')  between DATE_FORMAT(NOW(), '%Y%m%d') and DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 7 DAY), '%Y%m%d')
GROUP BY episode_id
ORDER BY viewer desc limit 2;
