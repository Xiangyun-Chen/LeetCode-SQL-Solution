-- 题目：1729.求关注者的数量
-- 思路：使用 GROUP BY 对 user_id 进行分组，然后通过 COUNT(follower_id) 统计每个用户的关注者数
-- 作者：Xiangyun-Chen

SELECT user_id,COUNT(follower_id) AS followers_count FROM Followers
GROUP BY user_id
ORDER BY user_id