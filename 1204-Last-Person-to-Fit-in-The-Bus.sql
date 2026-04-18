-- 题目：1204.最后一个能进入巴士的人
-- 思路：内层查询按 turn 顺序计算累积重量 total_weight。
-- 外层筛选出累积重量 ≤ 1000 的记录。
-- 按 turn 降序排列，取第一条记录，即最后一个上车的乘客。
-- 作者：Xiangyun-Chen

SELECT person_name
FROM (
    SELECT person_name, turn,
           SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
) t
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1