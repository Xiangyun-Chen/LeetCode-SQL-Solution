# LeetCode SQL Solutions 📊

Welcome to my LeetCode SQL repository! 
Here, I document my journey of mastering SQL through solving LeetCode database problems. 

>**Goal:** Build solid foundations in data extraction, aggregation, and analytical functions (Window Functions) for Data Analytics/Data Science roles.

## 🛠️ Tech Stack & Concepts
- **Language:** MySQL / PostgreSQL
- **Key Focus Areas:** 
  - Advanced JOINs & Subqueries
  - Window Functions (`ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`)
  - Aggregation & GROUP BY
  - CTEs (Common Table Expressions)

---

## 📂 File Naming Convention
All solution files are named in the following format:
`[Problem Number]-[Problem Name].sql` (e.g., `0175-Combine-Two-Tables.sql`)

---

## 📈 Progress Tracker


| 题号 (ID) | 题目 (Problem Title) | 难度 (Difficulty) | 核心考点 (Tags) | 解答 (Solution) |
| :---: | :--- | :---: | :--- | :---: |
| 1757 | [Recyclable and Low Fat Product](https://leetcode.cn/problems/recyclable-and-low-fat-products/description/) | 🟢 Easy | `WHERE` | [SQL](1757-Recyclable-and-Low-Fat-Products.sql)|
|584|[Find Customer Referee](https://leetcode.cn/problems/find-customer-referee/)|🟢 Easy |`NULL`值处理|[SQL](584-Find-Customer-Referee.sql)|
|595|[Big Countries](https://leetcode.cn/problems/big-countries)|🟢 Easy |`OR`条件查询|[SQL](595-Big-Countries.sql)|
|1148|[Article Viwes Ⅰ](https://leetcode.cn/problems/article-views-i)|🟢 Easy |`DISTINCT`|[SQL](1148-Article-Views-Ⅰ.sql)|
|1683|[Invalid tweets](https://leetcode.cn/problems/invalid-tweets)|🟢 Easy |`LENGTH()`|[SQL](1683-Invalid-Tweets.sql)|
|1378|[Replace Employee ID With The Unique Identifier](https://leetcode.cn/problems/replace-employee-id-with-the-unique-identifier)|🟢 Easy |`LEFT JOIN`|[SQL](1378-Replace-Employee-ID-With-The-Unique-Identifier.sql)|
|1068|[Product Sales Analysis Ⅰ](https://leetcode.cn/problems/product-sales-analysis-i)|🟢 Easy |`JOIN`|[SQL](1068-Product-Sales-Analysis-Ⅰ.sql)|
|1581|[Customers Who Visited But Did Not Make Any Transactions](https://leetcode.cn/problems/customer-who-visited-but-did-not-make-any-transactions)|🟢 Easy |`COUNT()`,`LEFT JOIN`,`GROUP BY`|[SQL](1581-Customer-Who-Visited-But-Did-Not-Make-Any-Transactions.sql)|
|197|[Rising Temperature](https://leetcode.cn/problems/rising-temperature)|🟢 Easy |`DATEDIFF()`|[SQL](197-rising-temperature.sql)|
|1661|[Average Time of Process Per Machine](https://leetcode.cn/problems/average-time-of-process-per-machine)|🟢 Easy |`JOIN`自连接|[SQL](1661-Average-Time-of-Process-Per-Machine.sql)|
|577|[Employee Bonus](https://leetcode.cn/problems/employee-bonus)|🟢 Easy |`LEFT JOIN`|[SQL](577-Employee-Bonus.sql)|
|1280|[Students And Examinations](https://leetcode.cn/problems/students-and-examinations)|🟢 Easy |`CROSS JOIN`交叉连接,`LEFT JOIN`|[SQL](1280-Students-And-Examinations.sql)|
|570|[Managers With at Least 5 Direct Reports](https://leetcode.cn/problems/managers-with-at-least-5-direct-reports)| 🟡 Medium |`HAVING`|[SQL](570-Managers-With-At-Least-5-Direct-Reports.sql)|
|1934|[Confirmation Rate](https://leetcode.cn/problems/confirmation-rate)| 🟡 Medium |`ROUND()`,`IFNULL()`,`SUM()`,`COUNT()`,`LEFT JOIN`|[SQL](1934-Confirmation-Rate.sql)|
|620|[Not Boring Movies](https://leetcode.cn/problems/not-boring-movies)|🟢 Easy |`MOD()`|[SQL](620-Not-Boring-Movies.sql)|
|1251|[Average Selling Price](https://leetcode.cn/problems/average-selling-price)|🟢 Easy |`IFNULL()`,`ROUNG()`,`SUM()``LEFT JOIN`|[SQL](1251-Average-Selling-Price.sql)|
|1075|[Project Employee Ⅰ](https://leetcode.cn/problems/project-employees-i)|🟢 Easy |`AVG()`,`LEFT JOIN`|[SQL](1075-Project-Employee-Ⅰ.sql)|
|1633|[Percentage of Users Attended a Contest](https://leetcode.cn/problems/percentage-of-users-attended-a-contest)|🟢 Easy |`GROUP BY`,`ORDER BY`|[SQL](1633-Percentage-of-Users-Attended-a-Contest.sql)|
|1211|[Queries Quality and Percentage](https://leetcode.cn/problems/queries-quality-and-percentage)|🟢 Easy |`SUM()`,`CASEN WHEN`|[SQL](1211-Queries-Quality-and-Percentage.sql)|
|1193|[Monthly Transactions Ⅰ](https://leetcode.cn/problems/monthly-transactions-i)| 🟡 Medium |`DATE_FORMAT()`,`SUM()`|[SQL](1193-Monthly-Transactions-Ⅰ.sql)|
|1174|[Immediate Food Delivery Ⅱ](https://leetcode.cn/problems/immediate-food-delivery-ii)| 🟡 Medium |`ROW_NUMBER()`|[SQL](1174-Immediate-Food-Delivery-Ⅱ.sql)|
|550|[Game Play Analysis Ⅳ](https://leetcode.cn/problems/game-play-analysis-iv)| 🟡 Medium |`DATEDIFF()`,`MIN()OVER(PARTITION BY)`|[SQL](550-Game-Play-Analysis-Ⅳ.sql)|
|2356|[Number of Unique Subjects Taught by Each Teacher](https://leetcode.cn/problems/number-of-unique-subjects-taught-by-each-teacher)|🟢 Easy |`GROUP BY`|[SQL](2356-Number-of-Unique-Subjects-Taught-by-Each-Teacher.sql)|
|1141|[User Activity for the Past 30 Days Ⅰ](https://leetcode.cn/problems/user-activity-for-the-past-30-days-i)|🟢 Easy |`DISTINCT`|[SQL](1141-User-Activity-for-the-Past-30-Days-Ⅱ.sql)|
|1084|[Sales Analysis Ⅲ](https://leetcode.cn/problems/sales-analysis-iii)|🟢 Easy |`MIN()`,`MAX()`|[SQL](1084-Sales-Analysis-Ⅲ.sql)|
|596|[Classes With at Least 5 Students](https://leetcode.cn/problems/classes-with-at-least-5-students)|🟢 Easy |`GROUP BY`,`HAVING`|[SQL](596-Classes-With-at-Least-5-Students.sql)|
|1729|[Find Followers Count](https://leetcode.cn/problems/find-followers-count)|🟢 Easy |`COUNT()`|[SQL](1729-Find-Followers-Count.sql)|
|619|[Biggest Single Number](https://leetcode.cn/problems/biggest-single-number)|🟢 Easy |`MAX()`,临时表|[SQL](619-Biggest-Single-Number.sql)|
|1731|[The Number of Employees Which Report to Each Employee](https://leetcode.cn/problems/the-number-of-employees-which-report-to-each-employee)|🟢 Easy |`INNER JOIN`,自连接|[SQL](1731-The-Number-of-Employees-Which-Report-to-Each-Employee.sql)|
|1045|[Customers Who Bought All Products](https://leetcode.cn/problems/customers-who-bought-all-products)| 🟡 Medium |`GROUP BY`,`HAVING`|[SQL](1045-Customers-Who-Bought-All-Products.sql)|
|1789|[Primary Department for Each Employee](https://leetcode.cn/problems/primary-department-for-each-employee)|🟢 Easy |`HAVING`|[SQL](1789-Primary-Department-for-Each-Employee.sql)|
|610|[Triangle Judgement](https://leetcode.cn/problems/triangle-judgement)|🟢 Easy |`CASE WHEN`|[SQL](610-Triangle-Judgement.sql)|
|180|[Consecutive Numbers](https://leetcode.cn/problems/consecutive-numbers)| 🟡 Medium |`WITH ... AS()`|[SQL](180-Consecutive-Numbers.sql)|
|1164|[Product Price at a Given Date](https://leetcode.cn/problems/product-price-at-a-given-date)| 🟡 Medium |`ROW_NUMBER()`,`COALESCE()`,`LEFT JOIN`|[SQL](1164-Product-Price-at-a-Given-Date.sql)|
|1204|[Last Person to Fit in The Bus](https://leetcode.cn/problems/last-person-to-fit-in-the-bus)| 🟡 Medium |`SUN()OVER()`,`ORDER BY`,`LIMIT 1`|[SQL](1204-Last-Person-to-Fit-in-The-Bus.sql)|
|1907|[Count Salary Categories](https://leetcode.cn/problems/count-salary-categories)| 🟡 Medium |`UNION`,`SUM(CASE WHEN...)`|[SQL](1907-Count-Salary-Categories.sql)|
|1978|[Employees Whose Manager Left the Company](https://leetcode.cn/problems/employees-whose-manager-left-the-company)|🟢 Easy |`NOT IN`,`IS NOT NULL`|[SQL](1978-Employees-Whose-Manager-Left-the-Company.sql)|
|626|[Exchange Seats](https://leetcode.cn/problems/exchange-seats)| 🟡 Medium |`COALESCE()`,`LEAG()`,`LAG()`,Window Function|[SQL](626-Exchange-Seats.sql)|
|1341|[Movie Rating](https://leetcode.cn/problems/movie-rating)| 🟡 Medium |`LIMIT 1`,`UNION ALL`|[SQL](1341-Movie-Rating.sql)|
| 185 | [Department Top Three Salaries](https://leetcode.com/problems/department-top-three-salaries/) | 🔴 Hard | `DENSE_RANK()`, Window Function | [SQL](./0185-Department-Top-Three-Salaries.sql) |
| ... | ... | ... | ... | ... |


*(Note: The table above is continuously updated as I solve more problems.)*

---
**📫 Let's Connect:** If you have better queries or optimization ideas, feel free to reach out!
