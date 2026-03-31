-- 题目：1174.即时食物配送Ⅱ
-- 思路：首先使用窗口函数 ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) 为每个顾客的订单按日期排序，
--       筛选出每个顾客的第一笔订单（rn = 1），即首次订单。
--       然后计算这些首次订单中，订单日期等于顾客偏好送达日期的订单比例（即即时订单比例），
--       将比例乘以 100.0 得到百分比，并四舍五入保留两位小数。
-- 作者：Xiangyun-Chen

SELECT ROUND(100.0*SUM(CASE WHEN order_date=customer_pref_delivery_date THEN 1 ELSE 0 END) /COUNT(*),2) 
AS immediate_percentage FROM (
    SELECT customer_id, order_date, customer_pref_delivery_date,
           ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn
    FROM Delivery
) t
WHERE t.rn = 1