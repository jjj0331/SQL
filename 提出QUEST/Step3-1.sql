SELECT 
episode_id,
max(episode_name) as episode_name,
sum(viewer) as viewer
FROM apprentice.v_tv_schedule
group by episode_id
order by viewer desc
limit 3;