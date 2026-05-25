-- 题目：196.删除重复的电子邮箱
-- 思路：自连接Person p1 和 Person p2 是同一张表的两个不同别名。
-- 通过p1.email = p2.email将同一邮件地址的记录连接在一起。
-- 筛选条件 WHERE p1.id > p2.id
-- DELETE p1，只删除p1别名对应的记录p2的记录（id 较小的）保留。
-- 作者：Xiangyun-Chen

DELETE p1
FROM Person p1
INNER JOIN Person p2
ON p1.email = p2.email
WHERE p1.id > p2.id