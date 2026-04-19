-- 题目：1907.按分类统计薪水
-- 思路：这个查询通过“为每个类别条件计数单独写一个查询，然后用 UNION 合并”的方式，强制输出所有指定的类别，即使某些类别计数为 0。
-- 它避免了因 GROUP BY 导致类别缺失的问题，是解决此类“输出固定分类统计”的经典模式之一。
-- 作者：Xiangyun-Chen

SELECT 
    'Low Salary' AS category,
    SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
FROM 
    Accounts
    
UNION
SELECT  
    'Average Salary' category,
    SUM(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 ELSE 0 END) 
    AS accounts_count
FROM 
    Accounts

UNION
SELECT 
    'High Salary' category,
    SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS accounts_count
FROM 
    Accounts