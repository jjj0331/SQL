CREATE 
VIEW `v_tv_schedule` AS
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
        `t2`.`title_id` AS `title_id`
    FROM
        (`tv_schedule` `t1`
        LEFT JOIN `episodes` `t2` ON ((`t1`.`episode_id` = `t2`.`episode_id`)))