﻿SET FOREIGN_KEY_CHECKS = 0;

insert into `app_switch`(`id`,`app_package_name`,`type`,`version`,`status`,`create_date`,`update_date`) values
(1,'io.dkgj',2,'1.0.2',1,'2019-07-15 15:07:31',null);


insert into `schedule_job`(`job_id`,`bean_name`,`params`,`cron_expression`,`status`,`remark`,`create_time`) values
(4,'channelDataCopyTask',null,'0 0 0 * * ?',0,'历史数据落盘任务	',null);

INSERT INTO `sys_config` (`id`, `param_key`, `param_value`, `status`, `remark`)
VALUES
	(1, 'CLOUD_STORAGE_CONFIG_KEY', '{\"type\":2,\"aliyunDomain\":\"http://ycqb.oss-cn-hangzhou.aliyuncs.com\",\"aliyunEndPoint\":\"http://oss-cn-hangzhou.aliyuncs.com\",\"aliyunAccessKeyId\":\"LTAI4Fx9mMYxsUz6tWUcB3k9\",\"aliyunAccessKeySecret\":\"D1RWB7b810ZDDqmag2EbAYfiTY9gqq\",\"aliyunBucketName\":\"ycqb\"}', 0, '云存储配置信息');

INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `name`, `order_num`, `del_flag`)
VALUES
	(1, 0, '集团总部', 0, 0);


insert into `sys_dict`(`id`,`name`,`type`,`code`,`value`,`order_num`,`remark`,`del_flag`) values
(1,'性别','sex','0','女',0,null,0),
(2,'性别','sex','1','男',1,null,0),
(3,'性别','sex','2','未知',3,null,0);

INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `name`, `url`, `perms`, `type`, `icon`, `order_num`)
VALUES
	(1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 0),
	(2, 1, '管理员管理', 'modules/sys/user.html', NULL, 1, 'fa fa-user', 1),
	(3, 1, '角色管理', 'modules/sys/role.html', NULL, 1, 'fa fa-user-secret', 2),
	(4, 1, '菜单管理', 'modules/sys/menu.html', NULL, 1, 'fa fa-th-list', 3),
	(5, 1, 'SQL监控', 'druid/sql.html', NULL, 1, 'fa fa-bug', 4),
	(6, 1, '定时任务', 'modules/job/schedule.html', NULL, 1, 'fa fa-tasks', 5),
	(7, 6, '查看', NULL, 'sys:schedule:list,sys:schedule:info', 2, NULL, 0),
	(8, 6, '新增', NULL, 'sys:schedule:save', 2, NULL, 0),
	(9, 6, '修改', NULL, 'sys:schedule:update', 2, NULL, 0),
	(10, 6, '删除', NULL, 'sys:schedule:delete', 2, NULL, 0),
	(11, 6, '暂停', NULL, 'sys:schedule:pause', 2, NULL, 0),
	(12, 6, '恢复', NULL, 'sys:schedule:resume', 2, NULL, 0),
	(13, 6, '立即执行', NULL, 'sys:schedule:run', 2, NULL, 0),
	(14, 6, '日志列表', NULL, 'sys:schedule:log', 2, NULL, 0),
	(15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0),
	(16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0),
	(17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0),
	(18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0),
	(19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0),
	(20, 3, '新增', NULL, 'sys:role:save,sys:menu:perms', 2, NULL, 0),
	(21, 3, '修改', NULL, 'sys:role:update,sys:menu:perms', 2, NULL, 0),
	(22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0),
	(23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0),
	(24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0),
	(25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0),
	(26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0),
	(27, 1, '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, 'fa fa-sun-o', 6),
	(29, 1, '系统日志', 'modules/sys/log.html', 'sys:log:list', 1, 'fa fa-file-text-o', 7),
	(30, 1, '文件上传', 'modules/oss/oss.html', 'sys:oss:all', 1, 'fa fa-file-image-o', 6),
	(31, 1, '部门管理', 'modules/sys/dept.html', NULL, 1, 'fa fa-file-code-o', 1),
	(32, 31, '查看', NULL, 'sys:dept:list,sys:dept:info', 2, NULL, 0),
	(33, 31, '新增', NULL, 'sys:dept:save,sys:dept:select', 2, NULL, 0),
	(34, 31, '修改', NULL, 'sys:dept:update,sys:dept:select', 2, NULL, 0),
	(35, 31, '删除', NULL, 'sys:dept:delete', 2, NULL, 0),
	(36, 1, '字典管理', 'modules/sys/dict.html', NULL, 1, 'fa fa-bookmark-o', 6),
	(37, 36, '查看', NULL, 'sys:dict:list,sys:dict:info', 2, NULL, 6),
	(38, 36, '新增', NULL, 'sys:dict:save', 2, NULL, 6),
	(39, 36, '修改', NULL, 'sys:dict:update', 2, NULL, 6),
	(40, 36, '删除', NULL, 'sys:dict:delete', 2, NULL, 6),
	(41, 76, '产品', 'modules/sys/loan.html', NULL, 1, 'fa fa-file-code-o', 6),
	(42, 41, '查看', NULL, 'sys:loan:list,sys:loan:info', 2, NULL, 6),
	(43, 41, '新增', NULL, 'sys:loan:save', 2, NULL, 6),
	(44, 41, '修改', NULL, 'sys:loan:update', 2, NULL, 6),
	(45, 41, '删除', NULL, 'sys:loan:delete', 2, NULL, 6),
	(46, 76, '产品访问统计', 'modules/sys/logloan.html', NULL, 1, 'fa fa-file-code-o', 6),
	(47, 46, '查看', NULL, 'sys:logloan:list,sys:logloan:info', 2, NULL, 6),
	(48, 46, '新增', NULL, 'sys:logloan:save', 2, NULL, 6),
	(49, 46, '修改', NULL, 'sys:logloan:update', 2, NULL, 6),
	(50, 46, '删除', NULL, 'sys:logloan:delete', 2, NULL, 6),
	(51, 76, '用户设备', 'modules/sys/mlogdevice.html', NULL, 1, 'fa fa-file-code-o', 6),
	(52, 51, '查看', NULL, 'sys:mlogdevice:list,sys:mlogdevice:info', 2, NULL, 6),
	(53, 51, '新增', NULL, 'sys:mlogdevice:save', 2, NULL, 6),
	(54, 51, '修改', NULL, 'sys:mlogdevice:update', 2, NULL, 6),
	(55, 51, '删除', NULL, 'sys:mlogdevice:delete', 2, NULL, 6),
	(56, 76, '用户账号', 'modules/sys/loanuser.html', NULL, 1, 'fa fa-file-code-o', 6),
	(57, 56, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 6),
	(58, 56, '新增', NULL, 'sys:user:save', 2, NULL, 6),
	(59, 56, '修改', NULL, 'sys:user:update', 2, NULL, 6),
	(60, 56, '删除', NULL, 'sys:user:delete', 2, NULL, 6),
	(61, 77, '首页banner', 'modules/sys/banner.html', NULL, 1, 'fa fa-file-code-o', 1),
	(62, 61, '查看', NULL, 'sys:banner:list,sys:banner:info', 2, NULL, 6),
	(63, 61, '新增', NULL, 'sys:banner:save', 2, NULL, 6),
	(64, 61, '修改', NULL, 'sys:banner:update', 2, NULL, 6),
	(65, 61, '删除', NULL, 'sys:banner:delete', 2, NULL, 6),
	(66, 77, '渠道管理', 'modules/sys/channelmanage.html', NULL, 1, 'fa fa-file-code-o', 2),
	(67, 66, '查看', NULL, 'sys:channelmanage:list,sys:channelmanage:info', 2, NULL, 6),
	(68, 66, '新增', NULL, 'sys:channelmanage:save', 2, NULL, 6),
	(69, 66, '修改', NULL, 'sys:channelmanage:update', 2, NULL, 6),
	(70, 66, '删除', NULL, 'sys:channelmanage:delete', 2, NULL, 6),
	(71, 77, '渠道统计', 'modules/sys/logchannel.html', NULL, 1, 'fa fa-file-code-o', 4),
	(72, 71, '查看', NULL, 'sys:logchannel:list,sys:logchannel:info', 2, NULL, 6),
	(73, 71, '新增', NULL, 'sys:logchannel:save', 2, NULL, 6),
	(74, 71, '修改', NULL, 'sys:logchannel:update', 2, NULL, 6),
	(75, 71, '删除', NULL, 'sys:logchannel:delete', 2, NULL, 6),
	(76, 0, '产品管理', NULL, NULL, 0, 'fa fa-product-hunt', 0),
	(77, 0, '应用管理', NULL, NULL, 0, 'fa fa-linode', 0),
	(79, 77, '渠道历史统计', 'modules/sys/historylogchannel.html', NULL, 1, 'fa fa-file-code-o', 5),
	(80, 79, '查看', NULL, 'sys:historylogchannel:list,sys:historylogchannel:info', 2, NULL, 6),
	(81, 79, '新增', NULL, 'sys:historylogchannel:save', 2, NULL, 6),
	(82, 79, '修改', NULL, 'sys:historylogchannel:update', 2, NULL, 6),
	(83, 79, '删除', NULL, 'sys:historylogchannel:delete', 2, NULL, 6),
	(89, 77, '渠道统计（管理员）', 'modules/sys/adminlogchannel.html', NULL, 1, 'fa fa-file-code-o', 3),
	(90, 89, '查看', NULL, 'sys:adminlogchannel:list,sys:logchannelvisit:info', 2, NULL, 6),
	(91, 89, '新增', NULL, 'sys:adminlogchannel:save', 2, NULL, 6),
	(92, 89, '修改', NULL, 'sys:adminlogchannel:update', 2, NULL, 6),
	(93, 89, '删除', NULL, 'sys:adminlogchannel:delete', 2, NULL, 6),
	(94, 77, 'IDFA统计', 'modules/sys/logaso.html', NULL, 1, 'fa fa-file-code-o', 6),
	(95, 94, '查看', NULL, 'sys:logaso:list,sys:logaso:info', 2, NULL, 6),
	(96, 94, '新增', NULL, 'sys:logaso:save', 2, NULL, 6),
	(97, 94, '修改', NULL, 'sys:logaso:update', 2, NULL, 6),
	(98, 94, '删除', NULL, 'sys:logaso:delete', 2, NULL, 6),
	(99, 104, '应用市场APP管理', 'modules/sys/market.html', NULL, 1, 'fa fa-file-code-o', 6),
	(100, 99, '查看', NULL, 'sys:market:list,sys:market:info', 2, NULL, 6),
	(101, 99, '新增', NULL, 'sys:market:save', 2, NULL, 6),
	(102, 99, '修改', NULL, 'sys:market:update', 2, NULL, 6),
	(103, 99, '删除', NULL, 'sys:market:delete', 2, NULL, 6),
	(104, 0, '应用市场', NULL, NULL, 0, 'fa fa-rocket', 0),
	(105, 104, '应用市场产品管理', 'modules/sys/apploan.html', NULL, 1, 'fa fa-file-code-o', 6),
	(106, 105, '查看', NULL, 'sys:apploan:list,sys:apploan:info', 2, NULL, 6),
	(107, 105, '新增', NULL, 'sys:apploan:save', 2, NULL, 6),
	(108, 105, '修改', NULL, 'sys:apploan:update', 2, NULL, 6),
	(109, 105, '删除', NULL, 'sys:apploan:delete', 2, NULL, 6),
	(110, 77, '用户点击产品记录', 'modules/sys/logloanvist.html', NULL, 1, 'fa fa-file-code-o', 7),
	(111, 110, '查看', NULL, 'sys:logloanvist:list,sys:logloanvist:info', 2, NULL, 0),
	(112, 110, '新增', NULL, 'sys:logloanvist:save', 2, NULL, 0),
	(113, 110, '修改', NULL, 'sys:logloanvist:update', 2, NULL, 0),
	(114, 110, '删除', NULL, 'sys:logloanvist:delete', 2, NULL, 0);


INSERT INTO `sys_role` (`role_id`, `role_name`, `remark`, `dept_id`, `create_time`, `channel_id`)
VALUES
	(1, '管理员', NULL, 1, '2020-03-23 11:23:41', NULL);


INSERT INTO `sys_role_dept` (`id`, `role_id`, `dept_id`)
VALUES
	(1, 1, 1);



INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`)
VALUES
	(66, 1, 1),
	(67, 1, 2),
	(72, 1, 3),
	(77, 1, 4),
	(82, 1, 5),
	(83, 1, 6),
	(84, 1, 7),
	(85, 1, 8),
	(86, 1, 9),
	(87, 1, 10),
	(88, 1, 11),
	(89, 1, 12),
	(90, 1, 13),
	(91, 1, 14),
	(68, 1, 15),
	(69, 1, 16),
	(70, 1, 17),
	(71, 1, 18),
	(73, 1, 19),
	(74, 1, 20),
	(75, 1, 21),
	(76, 1, 22),
	(78, 1, 23),
	(79, 1, 24),
	(80, 1, 25),
	(81, 1, 26),
	(92, 1, 27),
	(93, 1, 29),
	(94, 1, 30),
	(95, 1, 31),
	(96, 1, 32),
	(97, 1, 33),
	(98, 1, 34),
	(99, 1, 35),
	(100, 1, 36),
	(101, 1, 37),
	(102, 1, 38),
	(103, 1, 39),
	(104, 1, 40),
	(106, 1, 41),
	(107, 1, 42),
	(108, 1, 43),
	(109, 1, 44),
	(110, 1, 45),
	(111, 1, 46),
	(112, 1, 47),
	(113, 1, 48),
	(114, 1, 49),
	(115, 1, 50),
	(116, 1, 51),
	(117, 1, 52),
	(118, 1, 53),
	(119, 1, 54),
	(120, 1, 55),
	(121, 1, 56),
	(122, 1, 57),
	(123, 1, 58),
	(124, 1, 59),
	(125, 1, 60),
	(127, 1, 61),
	(128, 1, 62),
	(129, 1, 63),
	(130, 1, 64),
	(131, 1, 65),
	(132, 1, 66),
	(133, 1, 67),
	(134, 1, 68),
	(135, 1, 69),
	(136, 1, 70),
	(137, 1, 71),
	(138, 1, 72),
	(139, 1, 73),
	(140, 1, 74),
	(141, 1, 75),
	(105, 1, 76),
	(126, 1, 77),
	(142, 1, 79),
	(143, 1, 80),
	(144, 1, 81),
	(145, 1, 82),
	(146, 1, 83),
	(147, 1, 89),
	(148, 1, 90),
	(149, 1, 91),
	(150, 1, 92),
	(151, 1, 93),
	(152, 1, 94),
	(153, 1, 95),
	(154, 1, 96),
	(155, 1, 97),
	(156, 1, 98),
	(163, 1, 99),
	(164, 1, 100),
	(165, 1, 101),
	(166, 1, 102),
	(167, 1, 103),
	(162, 1, 104),
	(168, 1, 105),
	(169, 1, 106),
	(170, 1, 107),
	(171, 1, 108),
	(172, 1, 109),
	(157, 1, 110),
	(158, 1, 111),
	(159, 1, 112),
	(160, 1, 113),
	(161, 1, 114);


insert into `sys_user`(`user_id`,`username`,`password`,`salt`,`email`,`mobile`,`status`,`dept_id`,`create_time`,`channel_id`,`loan_ids`) values
(1,'admin','e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b','YzcmCZNvbXocrsz9dm8e','root@demo.com','15868417851',1,1,now(),null,null);


INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`)
VALUES
	(1, 1, 1);




