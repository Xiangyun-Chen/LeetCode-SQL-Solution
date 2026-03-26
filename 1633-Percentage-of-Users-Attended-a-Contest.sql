-- 题目：1633.各赛事的用户注册率
-- 思路：计算每个赛事注册人数占总用户数的百分比，结果保留两位小数，按百分比降序、赛事ID升序排列
-- 作者：Xiangyun-Chen

SELECT contest_id,
ROUND(COUNT(Register.user_id)*100.0/(SELECT COUNT(*) FROM Users),2)
AS percentage FROM Register
GROUP BY contest_id
ORDER BY percentage DESC,contest_id ASC