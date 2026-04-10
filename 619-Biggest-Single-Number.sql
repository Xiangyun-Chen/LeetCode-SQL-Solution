-- 题目：619.只出现一次的最大数字
-- 思路：先通过子查询统计每个数字的出现次数，筛选出只出现一次的数字，再取最大值作为结果。若没有符合条件的数字，MAX 函数返回 NULL。
-- 作者：Xiangyun-Chen

SELECT MAX(num) AS num FROM
(SELECT num,COUNT(*) AS times FROM MyNumbers
GROUP BY num) as numtimes
WHERE times=1