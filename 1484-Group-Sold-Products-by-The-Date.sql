-- 题目：1484.按日期分组销售产品
-- 思路：统计每个日期下不同产品的数量，命名为 num_sold。
-- 将每个日期下的不同产品按字母顺序排序后用逗号连接成一个字符串，命名为 products。DISTINCT 确保每个产品只出现一次。
-- 按销售日期分组，每个日期生成一行结果。
-- 按日期升序排列结果。
-- 作者：Xiangyun-Chen

SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date

