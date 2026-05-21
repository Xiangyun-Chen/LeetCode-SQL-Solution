-- 题目：185.部门工资前三高的所有员工
-- 思路：典型的“分组 Top N”问题的标准解法
-- 连接：把员工和部门信息合并。
-- 分组排序排名：在每个部门内按工资降序用 DENSE_RANK 标出名次。
-- 过滤：只保留名次 ≤ 3 的记录。
-- 作者：Xiangyun-Chen

WITH ranked AS(SELECT Department.name AS Department,
Employee.name AS Employee,
Employee.salary AS Salary,
DENSE_RANK()OVER(PARTITION BY Department.name ORDER BY Employee.salary DESC )AS rk
FROM Employee
JOIN Department ON Employee.departmentID=Department.id)
SELECT Department, Employee, Salary
FROM ranked
WHERE rk <= 3