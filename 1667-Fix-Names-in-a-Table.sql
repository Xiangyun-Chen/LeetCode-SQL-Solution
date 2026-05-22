-- 题目：1667.修复表中的名字
-- 思路：将 Users 表中的name字段统一格式化为“首字母大写、其余字母小写”的形式
-- 然后按 user_id 排序输出
-- 作者：Xiangyun-Chen

SELECT 
    user_id,
    CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id