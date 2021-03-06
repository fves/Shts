-- IF EXIST DROP TABLE
drop table if exists user;
-- 用户表
create table user
(
  `id`       int auto_increment,
  `username` varchar(20) unique default ' '               not null comment '用户名',
  `email`    varchar(20) unique default ' '               not null comment '邮箱',
  `phone`    varchar(10)        default ' '               not null comment '手机号码',
  `address`  varchar(50)        default ' '               not null comment '用户地址',
  `remark`   varchar(50)        default ' '               not null comment '备注',
  `create_time`  timestamp          default current_timestamp not null comment '创建时间',
  `modify`   timestamp          default current_timestamp not null comment '修改时间',
  primary key (`id`)
) engine = InnoDB
  default charset = utf8
  auto_increment = 10000;
-- 创建索引
create index idx_username on user (`username`);
create index idx_email on user (`email`);

/* 用户详情表 */
-- IF EXIST DROP TABLE
drop table if exists user_detail;
create table user_detail
(
  `id`         int auto_increment not null comment '用户详细ID',
  `user_id`    int                not null comment '用户ID',
  `name`       varchar(20)        not null comment '用户真实名称',
  `school`     varchar(20)        not null comment '学校',
  `stuid`      varchar(20)        not null comment '学号',
  `academy`    varchar(20)        not null comment '学院',
  `profession` varchar(20)        not null comment '专业',
  `grade`      varchar(10)        not null comment '年级，大一二三四，研究生,其他',
  primary key (`id`)
) engine = InnoDB
  default charset = utf8
  auto_increment = 20000;
-- 创建索引
create index idx_user_id on user_detail (`user_id`);

/* 反馈表 */
-- IF EXIST DROP TABLE
drop table if exists feedback;
create table feedback
(
  `id`           int auto_increment                  not null comment '反馈ID',
  `type`         varchar(20)                         not null comment '反馈类型',
  `contact_type` varchar(10)                         not null comment '联系方式类型',
  `contact`      varchar(15)                         not null comment '联系方式',
  `content`      varchar(255)                        not null comment '反馈内容',
  `create_time`      timestamp default current_timestamp not null comment '反馈时间',
  `status`       int                                 not null comment '反馈状态,1：已处理，0：未处理',
  primary key (`id`)
) engine = InnoDB
  default charset = utf8
  auto_increment = 30000;


/* 商品表 */
-- IF EXIST DEOP TABLE
drop table if exists goods;
CREATE TABLE goods
(
  `id`       int(11)      not null auto_increment,
  `user_id`  int(11)      not null,
  `title`    varchar(255) not null,
  `desc`     varchar(255) not null,
  `type`     varchar(255) not null,
  `price`    int(10)      not null,
  `quantity` int(10)      not null,
  `img`      blob not null,
  `status`   int(11)      not null,
  `create_time`  timestamp(0) not null,
  `sale_time` timestamp(0) null,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5000
  CHARACTER SET = utf8;



