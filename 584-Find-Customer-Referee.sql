-- 题目：584.寻找用户推荐人
-- 思路：处理NULL值
-- 作者：Xiangyun-Chen

SELECT name FROM Customer
WHERE referee_id!=2 OR referee_id IS NULL