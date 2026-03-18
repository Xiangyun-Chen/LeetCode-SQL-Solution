-- 题目：1661. 每台机器的进程平均运行时间
-- 思路：使用自连接，将同一机器同一进程的start记录和end记录配对，计算每个进程的运行时间，然后按机器分组求平均
-- 作者：Xiangyun-Chen

SELECT x.machine_id,ROUND(AVG(y.timestamp-x.timestamp),3)AS processing_time FROM Activity x
JOIN Activity y ON x.machine_id=y.machine_id 
AND x.process_id=y.process_id 
AND y.activity_type='end' 
AND x.activity_type='start'
GROUP BY x.machine_id