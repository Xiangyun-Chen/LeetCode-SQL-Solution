-- 题目：1731.每位经理的下属员工数量
-- 思路：通过自连接，将 Employees 表作为经理表（e）和下属表（sub）
-- 连接条件为 e.employee_id = sub.reports_to，这样只保留有下属的经理
-- 整个查询的核心是自连接 + 分组聚合。
-- 作者：Xiangyun-Chen

SELECT 
    e.employee_id,
    e.name,
    COUNT(sub.employee_id) AS reports_count,
    ROUND(AVG(sub.age), 0) AS average_age
FROM 
    Employees e
INNER JOIN 
    Employees sub ON e.employee_id = sub.reports_to
GROUP BY 
    e.employee_id, e.name
ORDER BY 
    e.employee_id