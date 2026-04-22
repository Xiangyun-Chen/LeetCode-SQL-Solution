-- 题目：1341.电影评分
-- 思路：拆分独立问题,不要试图一个查询出两个结果，分开写再UNION ALL合并
-- GROUP BY + ORDER BY 聚合值 DESC, 平局字段 ASC + LIMIT 1 
-- 两个子查询的 SELECT 使用相同别名
-- 作者：Xiangyun-Chen

(
    SELECT u.name AS results
    FROM MovieRating mr
    JOIN Users u ON mr.user_id = u.user_id
    GROUP BY mr.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name ASC
    LIMIT 1
)
UNION ALL
(
    SELECT m.title AS results
    FROM MovieRating mr
    JOIN Movies m ON mr.movie_id = m.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY mr.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title ASC
    LIMIT 1
)