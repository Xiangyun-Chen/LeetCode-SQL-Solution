-- 题目：1075.项目员工Ⅰ
-- 思路：左连接项目表和员工表，按项目分组，计算每个项目中员工的平均工作年限，结果保留两位小数
-- 作者：Xiangyun-Chen

SELECT project_id,
ROUND(AVG(experience_years),2) AS average_years FROM Project
LEFT JOIN Employee ON Project.employee_id=Employee.employee_id
GROUP BY project_id