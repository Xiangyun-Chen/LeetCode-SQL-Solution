-- 题目：1934.确认率
-- 思路：左连接注册表和确认表，统计每个用户的确认次数和总请求数，计算确认率并处理没有请求记录的用户（确认率为0）
-- 作者：Xiangyun-Chen

SELECT s.user_id,
ROUND(IFNULL(SUM(c.action = 'confirmed') / COUNT(c.action),0), 2) 
AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id