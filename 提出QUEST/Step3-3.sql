/*本日の番組表を表示するために、本日、どのチャンネルの、何時から、何の番組が放送されるのかを知りたいです。
本日放送される全ての番組に対して、
チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得してください。
なお、番組の開始時刻が本日のものを本日方法される番組とみなすものとします*/

SELECT
    T1.ch,
    T1.start_time,
    T1.end_time,
    T2.series,
    T2.episode_no,
    T2.episode_name,
    T2.episode_details
FROM
    tv_schedule T1
INNER JOIN
    episodes T2 ON T1.episode_id = T2.episode_id
WHERE 
   DATE_FORMAT(start_time, '%Y%m%d')=DATE_FORMAT(NOW(), '%Y%m%d')
order by   start_time
