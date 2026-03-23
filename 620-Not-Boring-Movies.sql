-- 题目：620.有趣的电影
-- 思路：查询电影表中所有描述不为'boring'且id为奇数的电影，按评分降序排列
-- 作者：Xiangyun-Chen

SELECT * FROM cinema
WHERE description!='boring'
AND MOD(id,2)=1
ORDER BY rating DESC