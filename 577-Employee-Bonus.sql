-- 题目：577.员工奖金
-- 思路：使用 LEFT JOIN 连接 Employee 和 Bonus 表，保留所有员工信息.筛选条件为奖金少于 1000 或者奖金为 NULL（即没有奖金记录）。
-- 作者：Xiangyun-Chen

SELECT name,bonus FROM Employee
LEFT JOIN Bonus ON Employee.empID=Bonus.empID
WHERE bonus<1000 OR bonus IS NULL