/*ドラマというチャンネルがあったとして、
ドラマのチャンネルの番組表を表示するために、本日から一週間分、
何日の何時から何の番組が放送されるのかを知りたいです。
ドラマのチャンネルに対して、
放送開始時刻、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を本日から一週間分取得してください*/
SELECT
	T1.start_time as '放送開始時刻',
    T1.end_time as   '放送終了時刻',
    T2.series as 'シーズン数',
    T2.episode_no as 'エピソード数',
    T2.episode_name as 'エピソードタイトル',
    T2.episode_details as 'エピソード詳細'
FROM
    tv_schedule T1
INNER JOIN
	episodes T2 on T1.episode_id=T2.episode_id
WHERE
	DATE_FORMAT(start_time, '%Y%m%d')  between DATE_FORMAT(NOW(), '%Y%m%d') and DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 7 DAY), '%Y%m%d')
    and T1.ch=1
ORDER BY 
	start_time,ch;
