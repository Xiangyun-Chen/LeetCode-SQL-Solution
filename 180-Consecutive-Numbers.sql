-- 题目：180.连续出现的数字
-- 思路：创建cte作为临时表
-- LAG()是一个窗口函数，允许你在同一结果集中访问当前行之前的某行数据。用于比较相邻行的值。
-- 或用自连接，连接条件是id的差值
-- 作者：Xiangyun-Chen

解法一：
WITH cte AS (
    SELECT 
        id,
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev1,
        LAG(num, 2) OVER (ORDER BY id) AS prev2
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM cte
WHERE num = prev1 AND num = prev2

解法二：
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l2.id = l3.id - 1
WHERE l1.num = l2.num AND l2.num = l3.num