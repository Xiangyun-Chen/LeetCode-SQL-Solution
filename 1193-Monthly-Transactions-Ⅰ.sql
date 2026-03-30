-- 题目：1193.每月交易Ⅰ
-- 思路：使用DATE_FORMAT函数提取年月，按月份和国家提取，每个月和每个国家/地区的事务数及其总金额、已批准的事务数（条件计数）及其总金额（条件求和）
-- 作者：Xiangyun-Chen

SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month,
country,COUNT(id) AS trans_count,
SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END) AS approved_count, 
SUM(amount) AS trans_total_amount,
SUM(CASE WHEN state='approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month,country