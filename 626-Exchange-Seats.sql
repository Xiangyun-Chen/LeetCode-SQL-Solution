-- 题目：626.换座位
-- 思路：使用窗口函数 LEAD 和 LAG 来获取“下一个”或“上一个”座位上的学生
-- 然后通过 CASE 和 COALESCE 决定每个 id 最终应该显示哪个学生。
-- 作者：Xiangyun-Chen

SELECT
    id,
    COALESCE(
        CASE WHEN id % 2 = 1 THEN LEAD(student) OVER (ORDER BY id)
             WHEN id % 2 = 0 THEN LAG(student) OVER (ORDER BY id)
        END,
        student
    ) AS student
FROM Seat
ORDER BY id