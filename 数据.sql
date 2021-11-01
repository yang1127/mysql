-- 创建班级表classes,id为主键;
-- 创建班级表，有使用mysql关键字作为字段时，需要使用``来标识
drop table if exists student;
create table classes (
   id int primary key auto_increment,
   sn int unique,
   name varchar(20),
   `desc` varchar(100) -- desc在数据库中是关键字，若表中字段也为desc（描述），则用``引起来加一区别
);

-- 创建学生表
create table student (
   id int primary key auto_increment,
   sn int unique,
   name varchar(20),
   classes_id int,
   foreign key (classes_id) references classes(id)
);

-- 创建课程表
drop table if exists course;
create table course (
  id int primary key auto_increment,
  name varchar(20)
);

-- 创建分数表
drop table if exists score;
create table score (
  id int primary key auto_increment,
  score decimal(3, 1),
  student_id int,
  course_id int,
  foreign key (student_id) references student(id),
  foreign key  (course_id) references course(id)
);


-- 数据
insert into classes(name, `desc`) values
('计算机系2019级1班', '学习了计算机原理、C和Java语言、数据结构和算法'),
('中文系2019级3班','学习了中国传统文学'),
('自动化2019级5班','学习了机械自动化');


insert into student(sn, name, classes_id) values
('09982','黑旋风李逵',1),
('00835','菩提老祖',1),
('00391','白素贞',1),
('00031','许仙',1),
('00054','不想毕业',1),
('51234','好好说话',2),
('83223','tellme',2),
('09527','老外学中文',2);


insert into course(name) values
('Java'),('中国传统文化'),('计算机原理'),('语文'),('高阶数学'),('英文');


insert into score(score, student_id, course_id) values
-- 黑旋风李逵
(70.5, 1, 1),(98.5, 1, 3),(33, 1, 5),(98, 1, 6),
-- 菩提老祖
(60, 2, 1),(59.5, 2, 5),
-- 白素贞
(33, 3, 1),(68, 3, 3),(99, 3, 5),
-- 许仙
(67, 4, 1),(23, 4, 3),(56, 4, 5),(72, 4, 6),
-- 不想毕业
(81, 5, 1),(37, 5, 5),
-- 好好说话
(56, 6, 2),(43, 6, 4),(79, 6, 6),
-- tellme
(80, 7, 2),(92, 7, 6);
