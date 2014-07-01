使用注意事项：
---------

请安装在脚本前的编号依次使用.
oracle_need_software.txt 是软件包的名字列表，请勿删除

1. 这些脚本可以：
	1. 安装需要的软件包
	2. 配置内核参数
	3. 创建 用户以及组

2. 这些脚本**不可以**：
	配置 oracle用户的环境变量。请自己手动配置

-----

补充：
------

1. 使用脚本后， 会创建 oracle 用户, 密码：oracle。oinstall 和 dba 组。创建 /u01/app/oracle/product/11g 目录。

2. 我本人使用的是`oracle11g r2`，所以我的软件包和你的可能不一样，所以请在`oracle_need_software.txt` 文件内写上你自己需要的软件包名字。
