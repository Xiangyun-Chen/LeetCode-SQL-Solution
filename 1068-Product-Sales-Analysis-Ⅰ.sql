-- 题目：1068. 产品销售分析Ⅰ
-- 思路：连接Sales表和Product表，获取所有销售记录对应的产品名称
-- 作者：Xiangyun-Chen

SELECT product_name,year,price FROM Sales
JOIN Product ON Product.product_id=Sales.product_id