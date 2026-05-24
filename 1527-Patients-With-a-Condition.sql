-- 题目：1527.患某种疾病的患者
-- 思路：用两个LIKE条件覆盖“开头”和“空格后”两种情况
-- 作者：Xiangyun-Chen

SELECT patient_id,patient_name,conditions FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'