-- 题目：1250.平均售价
-- 思路：左连接价格表和销售表，筛选购买日期在价格有效期内的记录，计算每个产品的总销售额除以总销量得到平均售价，对于没有销售记录的产品使用IFNULL函数将平均售价设为0
-- 作者：Xiangyun-Chen

SELECT Prices.product_id,
IFNULL(ROUND(SUM(price*units)/SUM(units),2),0) AS average_price FROM Prices
LEFT JOIN UnitsSold ON Prices.product_id=UnitsSold.product_id
AND UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date
GROUP BY Prices.product_id