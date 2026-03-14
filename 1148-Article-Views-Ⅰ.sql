-- 题目：1148. 文章浏览Ⅰ
-- 思路：查询作者ID等于浏览者ID的记录，去重后按ID升序排序
-- 作者：Xiangyun-Chen

SELECT DISTINCT author_id AS id FROM Views
WHERE author_id=viewer_id
ORDER BY author_id ASC