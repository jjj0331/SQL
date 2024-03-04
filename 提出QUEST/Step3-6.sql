select
TBL.title,
TBL.genre,
TBL.average
from
(SELECT
    P1.title,
    P1.genre,
    P1.average,
    (SELECT COUNT(*)
     FROM (
         SELECT
             AVG(P2.viewer) as average
         FROM
             all_data_view P2
         WHERE
             P2.genre = P1.genre
         GROUP BY
             P2.title, P2.genre
     ) AS sub
     WHERE
         sub.average >= P1.average
    ) AS ranking
FROM
    (
        SELECT
            P1.title,
            P1.genre,
            AVG(P1.viewer) as average
        FROM
            all_data_view P1
        GROUP BY
            P1.title, P1.genre
    ) AS P1
 ) as TBL 
 where TBL.ranking=1

