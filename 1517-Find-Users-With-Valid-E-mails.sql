-- 题目：1517.查找拥有有效邮箱的用户
-- 思路：用区分大小写的正则表达式，筛选出以字母开头、仅含字母数字及三个特殊符号、且域名严格为 @leetcode.com 的邮箱。
-- 作者：Xiangyun-Chen

SELECT * 
FROM users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$','c')