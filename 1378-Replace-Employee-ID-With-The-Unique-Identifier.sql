-- 题目：1378. 使用唯一标识码替换员工ID
-- 思路：左连接Employees表和EmployeeUNI表，显示unique_id和name
-- 作者：Xiangyun-Chen

SELECT unique_id,name FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id