-- 题目：1045.买下所有产品的客户
-- 思路：按客户分组，统计每个客户购买的不同产品数量，这个数量必须等于 Product 表中的产品总数。
-- 使用 HAVING 子句进行过滤。
-- 作者：Xiangyun-Chen

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product)