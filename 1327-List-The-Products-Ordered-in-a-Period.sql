-- 题目：1327.列出指定时间段内所有的下单产品
-- 思路：先关联、再按时间筛选、然后按产品分组求和、最后保留总和≥100的产品。
-- 作者：Xiangyun-Chen

SELECT product_name,SUM(unit) AS unit FROM Products
JOIN Orders ON Products.product_id=Orders.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY product_name
HAVING unit>=100

