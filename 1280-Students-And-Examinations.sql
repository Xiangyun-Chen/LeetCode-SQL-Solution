-- 题目：1280.学生们参加各科测试的次数
-- 思路：使用 CROSS JOIN 连接所有学生和所有科目，确保每个学生都有每门科目的记录；然后 LEFT JOIN 考试表，统计每个学生在每门科目的考试次数；最后 GROUP BY 学生和科目，COUNT 考试记录，未参加考试的学生显示为 0。
-- 作者：Xiangyun-Chen

SELECT Students.student_id,Students.student_name,Subjects.subject_name,count(Examinations.student_id) AS attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations 
ON Students.student_id = Examinations.student_id AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id,Students.student_name,Subjects.subject_name
ORDER BY Students.student_id,Students.student_name

