-- 题目：570.至少有5名直接下属的经理
-- 思路：使用子查询先找出管理了至少5个员工的经理ID，然后在主查询中通过这些ID找到对应的经理姓名。
-- 作者：Xiangyun-Chen

SELECT name FROM Employee
WHERE id IN (SELECT managerId FROM Employee
GROUP BY managerId
HAVING COUNT(*) >= 5)

