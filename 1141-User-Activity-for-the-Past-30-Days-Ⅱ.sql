-- 题目：1141.查询近30天活跃用户数
-- 思路：计算每位教师所教授的不同科目数量。
-- 使用 GROUP BY teacher_id 对教师分组，
-- 然后使用 COUNT(DISTINCT subject_id) 统计每个教师不重复的科目数。
-- 最后输出 teacher_id 和对应的计数 cnt。
-- 作者：Xiangyun-Chen

SELECT teacher_id,COUNT(DISTINCT subject_id)AS cnt FROM Teacher
GROUP BY teacher_id