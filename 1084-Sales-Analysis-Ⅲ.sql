-- 题目：1084.销售分析Ⅲ
-- 思路：题目要求找出只在2019年春季（2019-01-01 至 2019-03-31）有销售记录的产品。
-- 关联Product和Sales表，按product_id分组。
-- 使用HAVING条件确保该产品的所有销售记录日期均在春季范围内
-- 作者：Xiangyun-Chen

SELECT Product.product_id,Product.product_name
FROM Product
JOIN Sales
ON Product.product_id = Sales.product_id 
GROUP BY Sales.product_id
HAVING Min(Sales.sale_date) >= '2019-01-01' AND Max(Sales.sale_date) <= '2019-03-31'