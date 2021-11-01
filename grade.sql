# and、or - and 优先级高于 or
# select * from grade where (chinese > 80 or math>70) and english > 70;  

# 范围查询
# between and
# SELECT name, math from grade where math BETWEEN 80 and 90;
# in
# SELECT name, math from grade where math in (81, 82, 83, 84, 85, 86, 87, 88, 89);

# like - 模糊查询
# % - 多个,杨、杨琪、杨芝琪，杨犹犹豫豫
# SELECT name from grade where name like '杨%'
# - 一个 杨琪、杨枝、杨阳
# SELECT name from grade where name like '杨_'

# limit 分页查询
# select * from grade limit 3; //显示前三条
# select name, math from grade  order by math limit 3, 3; //从下标为3的位置开始，显示3条

# 修改 - 数据
# UPDATE grade set math = 93 where name = '杨芝琪';

# 修改 - 表结构
# alter table grade add COLUMN physics decimal(3,1);

# 修改 - 主键


# 删除
# DELETE from grade where name = '杨'




