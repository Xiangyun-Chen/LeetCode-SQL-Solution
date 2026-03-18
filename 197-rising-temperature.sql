-- 题目：197. 上升的温度
-- 思路：使用自连接，将Weather表与自身连接，条件是日期相差1天，然后筛选出温度比前一天更高的记录
-- 作者：Xiangyun-Chen

SELECT x.id FROM Weather x
JOIN Weather y ON DATEDIFF(x.recordDate,y.recordDate)=1
WHERE x.temperature>y.temperature