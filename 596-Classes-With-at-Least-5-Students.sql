-- 题目：596.超过5名学生的课
-- 思路：按班级分组，用 HAVING 子句筛选学生数量
-- 作者：Xiangyun-Chen

SELECT class FROM Courses
GROUP BY class
HAVING COUNT(student)>=5