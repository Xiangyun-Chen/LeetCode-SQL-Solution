-- 题目：1164.指定日期的产品价格
-- 思路：从 Products 表中取出所有在 2019-08-16 当天或之前的变更记录。
-- 为每个产品的变更记录按日期降序编号，使得 rn=1 的即为最新价格。
-- 从原表中提取所有不重复的产品 ID。
-- 将每个产品 ID 与其最新价格记录（如果存在）进行连接。
-- 如果产品没有匹配到最新价格，则使用初始价格 10。
-- 作者：Xiangyun-Chen

WITH latest_price AS (
    SELECT 
        product_id,
        new_price,
        ROW_NUMBER() OVER (
            PARTITION BY product_id 
            ORDER BY change_date DESC
        ) AS rn
    FROM Products
    WHERE change_date <= '2019-08-16'
)
SELECT 
    p.product_id,
    COALESCE(latest_price.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN latest_price ON p.product_id = latest_price.product_id AND latest_price.rn = 1