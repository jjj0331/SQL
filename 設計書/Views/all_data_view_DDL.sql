CREATE 
VIEW `all_data_view` AS
    SELECT 
        `t1`.`start_time` AS `start_time`,
        `t1`.`end_time` AS `end_time`,
        `t1`.`ch` AS `ch`,
        `t1`.`episode_id` AS `episode_id`,
        `t1`.`viewer` AS `viewer`,
        `t1`.`id` AS `id`,
        `t2`.`episode_name` AS `episode_name`,
        `t2`.`episode_no` AS `episode_no`,
        `t2`.`episode_details` AS `episode_details`,
        `t2`.`series` AS `series`,
        `t4`.`genre` AS `genre`,
        `t3`.`title` AS `title`
    FROM
        (((`tv_schedule` `t1`
        LEFT JOIN `episodes` `t2` ON ((`t1`.`episode_id` = `t2`.`episode_id`)))
        LEFT JOIN `programs` `t3` ON ((`t2`.`title_id` = `t3`.`title_id`)))
        LEFT JOIN `genre` `t4` ON ((`t3`.`genre_id` = `t4`.`genre_id`)))