-- 题目：550.游戏玩法分析Ⅳ
-- 思路：计算首次登录后第二天再次登录的玩家比例。
--       使用窗口函数 MIN(event_date) OVER(PARTITION BY player_id) 得到每个玩家的首次登录日期 first_date，
--       然后判断每行记录是否满足 DATEDIFF(event_date, first_date) = 1，即第二天登录。
--       分子：第二天登录的玩家数（每个玩家最多贡献1，通过 SUM(CASE ...) 计数）。
--       分母：总玩家数（COUNT(DISTINCT player_id)）。
--       最后用 ROUND(..., 2) 保留两位小数。
-- 作者：Xiangyun-Chen

SELECT
    ROUND(SUM(CASE WHEN DATEDIFF(event_date, first_date) = 1 THEN 1 ELSE 0 END) /COUNT(DISTINCT player_id), 2) AS fraction
FROM
    (SELECT
        player_id,
        event_date,
        MIN(event_date) OVER(PARTITION BY player_id) AS first_date
    FROM
        Activity
    ) a