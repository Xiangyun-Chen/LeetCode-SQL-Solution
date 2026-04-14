-- 题目：1789.员工的直属部门
-- 思路：多部门取 primary_flag = 'Y'
-- 单部门取该员工的唯一部门（通过分组计数找出这些员工）
-- 作者：Xiangyun-Chen

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(*) = 1
   )