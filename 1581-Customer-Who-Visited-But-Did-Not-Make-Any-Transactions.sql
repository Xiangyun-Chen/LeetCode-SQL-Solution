-- 题目：1581. 进店却未进行过交易的顾客
-- 思路：使用LEFT JOIN连接两个表，筛选出在Transactions表中没有对应记录的访问，然后按customer_id分组统计无交易的次数
-- 作者：Xiangyun-Chen

SELECT customer_id,COUNT(Visits.visit_id)AS count_no_trans FROM Visits
LEFT JOIN Transactions ON Visits.visit_id=Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id 