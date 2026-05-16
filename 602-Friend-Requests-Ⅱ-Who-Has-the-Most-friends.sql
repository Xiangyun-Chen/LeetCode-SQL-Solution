-- 题目：602.好友申请Ⅱ：谁有最多的好友
-- 思路：每个人的好友数量等于他作为请求者或接受者出现的总次数
-- 查询中，子查询使用union all将requester_id和accepter_id合并成一个列，这样每个好友关系中的两个人都被列出一次。
-- 然后对id进行分组计数，得到每个人出现的总次数，即好友数。
-- 最后按num降序排列，取第一行，即拥有最多好友的人及其好友数。
-- 由于题目保证只有一个人拥有最多好友，所以limit 1是安全的。
-- 作者：Xiangyun-Chen

SELECT t1.ids AS id,COUNT(*) AS num
FROM(
   SELECT requester_id AS ids FROM RequestAccepted 
   UNION ALL
   SELECT accepter_id AS ids FROM RequestAccepted) 
   AS t1
GROUP BY id
ORDER BY num DESC
LIMIT 1
