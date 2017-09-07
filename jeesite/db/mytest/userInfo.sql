SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE USER_INFO;




/* Create Tables */

-- 用户信息
CREATE TABLE USER_INFO
(
	-- 编号
	ID VARCHAR(64) NOT NULL COMMENT '编号',
	-- 归属用户
	USER_ID VARCHAR(64) COMMENT '归属用户',
	-- 归属部门
	OFFICE_ID VARCHAR(64) COMMENT '归属部门',
	-- 归属区域
	AREA_ID VARCHAR(64) COMMENT '归属区域',
	-- 名称
	NAME VARCHAR(100) COMMENT '名称',
	-- 性别（字典类型：sex）
	SEX CHAR(1) COMMENT '性别（字典类型：sex）',
	-- 加入日期
	IN_DATE DATE COMMENT '加入日期',
	BIRTHDAY DATE,
	HOBBY VARCHAR(255),
	-- 创建者
	CREATE_BY VARCHAR(64) NOT NULL COMMENT '创建者',
	-- 创建时间
	CREATE_DATE DATETIME NOT NULL COMMENT '创建时间',
	-- 更新者
	UPDATE_BY VARCHAR(64) NOT NULL COMMENT '更新者',
	-- 更新时间
	UPDATE_DATE DATETIME NOT NULL COMMENT '更新时间',
	-- 备注信息
	REMARKS VARCHAR(255) COMMENT '备注信息',
	-- 删除标记（0：正常；1：删除）
	DEL_FLAG CHAR(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (ID)
) COMMENT = '用户信息';



/* Create Indexes */

CREATE INDEX USER_INFO_DEL_FLAG ON USER_INFO (DEL_FLAG DESC);


