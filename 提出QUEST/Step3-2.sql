
SELECT 
    T3.title,
    T2.episode_name,
    T2.series,
    T2.episode_no,
    T1.viewer
from top3 T1
inner join 
episodes T2 on T1.episode_id=T2.episode_id
left join 
programs T3 on T1.episode_id=T2.episode_id and T2.title_id=T3.title_id;