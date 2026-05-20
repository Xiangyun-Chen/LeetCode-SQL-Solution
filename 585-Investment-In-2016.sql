-- 题目：585.2016年的投资
-- 思路：tiv_2015至少跟一个其他投保人在2015年的投保额相同。即该投保人的tiv_2015值在整个表中出现次数大于1。
-- 所在城市 (lat, lon) 必须与其他投保人都不同，即该组合在整个表中只出现一次。
-- 最后对满足条件的投保人的 tiv_2016 求和，并四舍五入保留两位小数。
-- 作者：Xiangyun-Chen

方法一：
WITH cte AS (
    SELECT 
        tiv_2016,
        COUNT(*) OVER(PARTITION BY tiv_2015) AS tiv_2015_cnt,
        COUNT(*) OVER(PARTITION BY lat, lon) AS loc_cnt
    FROM Insurance
)
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM cte
WHERE tiv_2015_cnt > 1 AND loc_cnt = 1

方法二：
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
)