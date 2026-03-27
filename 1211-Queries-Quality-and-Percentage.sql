-- 题目：1211.查询结果的质量和占比
-- 思路：计算每个查询的质量（rating/position的平均值）和差评率（评分<3的查询占比），结果保留两位小数
-- 作者：Xiangyun-Chen

SELECT query_name,
ROUND(AVG(rating/position),2) AS quality,
ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
AS poor_query_percentage FROM Queries
GROUP BY query_name