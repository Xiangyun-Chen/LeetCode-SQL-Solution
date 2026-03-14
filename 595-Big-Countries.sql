-- 题目：595. 大的国家
-- 思路：OR条件查询，面积≥300万平方公里 或 人口≥2500万
-- 作者：Xiangyun-Chen

SELECT name,population,area FROM world
WHERE area>=3000000 OR population>=25000000