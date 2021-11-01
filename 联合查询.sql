# 聚合查询
# count
# SELECT count(*) from student;

# sum - 列
# select sum(math) from grade;

# agv
# select avg(chinese + math + english) 平均总分 from grade;

# MAX
# select max(english) from grade;

# MIN
# select min(english) from grade;

# GROUP BY - 分组查询
# select name, max(math), min(math), avg(math) from grade group by name;

# having - 过滤，用于group by
# select name, max(math), min(math), avg(math) from grade group by name HAVING avg(math) > 90;

# 联合查询
# 内连接 - 两表
# select sco.score from student stu join score sco on stu.id=sco.student_id and stu.name='许仙';

/*
# 内连接 - 三表
select stu.id, stu.sn, stu.name, sco.score, sco.course_id, cou.name
from student stu
join score sco on stu.id = sco.student_id
join course cou on cou.id = sco.course_id
where stu.name = '许仙';
*/

# 左连接
# select * from student stu left join score sco on stu.id=sco.student_id; 

# 右连接
# select * from student stu right join score sco on stu.id=sco.student_id; 

/*
# 自连接 - 自己表中查询
select stu.*, s1.score Java, s2.score 计算机原理
from score s1
join score s2 on s1.student_id = s2.student_id
join student stu on s1.student_id = stu.id
join course c1 on s1.course_id = c1.id
join course c2 on s2.course_id = c2.id
WHERE s1.score < s2.score
and c1.NAME = 'Java'
and c2.NAME = '计算机原理'
*/


# 子查询
# 找"不想毕业"班级号相同的同学
# SELECT * FROM student where classes_id = (SELECT classes_id FROM student WHERE name = '不想毕业');


# [not] IN
# SELECT * FROM student where classes_id not in (SELECT classes_id FROM student WHERE id = 1 or id = 3);

# [not]  exists
# select * from score sco where exists (select sco.id from course cou where (name='语文' or name='英文') and cou.id = sco.course_id)

# UNION [ALL] all不会去掉重复的
# 查询id小于3，或者名字为“Java”的课程 
SELECT * FROM course WHERE id < 3
UNION ALL
SELECT * from course where name = "Java";











