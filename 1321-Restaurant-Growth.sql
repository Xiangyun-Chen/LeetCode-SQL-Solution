-- 题目：1321.餐馆营业额变化增长
-- 思路：内层子查询：对原始Customer表的每一行，使用窗口函数SUM(amount)计算从当前日期往前6天（含）到当前日期的所有amount总和。
-- RANGE BETWEEN确保按日期范围匹配，而不是行数。
-- 内层结果中，同一天的多行会得到相同的sum_amount（因为窗口基于日期范围）。
-- WHERE条件：只保留那些距离表中最早日期>=6天的记录，即从第7天开始输出，确保窗口完整（有7天数据）。
-- 作者：Xiangyun-Chen

SELECT DISTINCT visited_on,
       sum_amount AS amount, 
       ROUND(sum_amount/7, 2) AS average_amount
FROM (
    SELECT visited_on,
    SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS sum_amount 
    FROM Customer) t
WHERE DATEDIFF(visited_on, (SELECT MIN(visited_on) FROM Customer))>= 6