-- 题目：176.第二高的薪水
-- 思路：DENSE_RANK()：窗口函数，按 salary DESC（从高到低）排序，生成连续排名。
-- 如果没有 rk = 2 的记录，那么所有 CASE 的结果都是 NULL，MAX(NULL) 返回 NULL。
-- 直接 SELECT salary 会返回空结果集（0 行），而题目要求返回 NULL。
-- 用 MAX聚合函数可以保证始终返回一行，且在没有匹配时结果为 NULL
-- 作者：Xiangyun-Chen

WITH ranked AS (
    SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rk
    FROM Employee
)
SELECT MAX(CASE WHEN rk = 2 THEN salary END) AS SecondHighestSalary
FROM ranked