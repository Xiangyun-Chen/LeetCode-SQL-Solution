-- 题目：1978.上级经理已离职的公司员工
-- 思路：筛选薪水小于 30000 的员工。
-- 排除经理为 NULL 的员工（因为 NULL 表示没有经理，不满足“经理已离职”的条件）。
-- 确保 manager_id 不在 Employees 表的 employee_id 中（即经理已离职）。
-- 作者：Xiangyun-Chen

SELECT employee_id FROM Employees
where salary<30000 AND manager_id IS NOT NULL
  AND manager_id NOT IN (
      SELECT employee_id
      FROM Employees
      WHERE employee_id IS NOT NULL
  )
ORDER BY employee_id

方式二：
SELECT employee_id
FROM Employees e
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM Employees m
      WHERE m.employee_id = e.manager_id
  )