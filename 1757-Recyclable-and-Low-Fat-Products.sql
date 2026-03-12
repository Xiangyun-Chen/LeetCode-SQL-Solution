-- 题目：1757. 可回收且低脂的产品
-- 思路：WHERE多条件过滤
-- 作者：Xiangyun-Chen

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'