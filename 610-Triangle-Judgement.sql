-- 题目：610.判断三角形
-- 思路：三角形的几何判定
-- 作者：Xiangyun-Chen

SELECT x,y,z,
(CASE WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes' ELSE 'No' END) AS triangle
FROM Triangle