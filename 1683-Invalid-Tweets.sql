-- 题目：1683. 无效的推文
-- 思路：筛选内容字符数大于15的推文ID,LENGTH()函数
-- 作者：Xiangyun-Chen

SELECT tweet_id FROM Tweets
WHERE LENGTH(content)>15