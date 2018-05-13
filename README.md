## 如何使用本系统：
1. clone本项目到你的电脑上
2. 将Essay_student项目导入到你的idea
3. 创建数据库 final
4. 将sql文件导入到你的mysql数据库中，推荐使用navicat, 或使用source final.sql 命令
5. 进入Essay_Student/src下，打开数据库配置文件db.properties
6. 将其中的user和password改为你电脑中mysql数据库的用户名和密码
7. 进入idea中 添加Tomcat运行即可
8. 如果上述一切顺利的话 你将会进入到登录界面，可以去数据库t_man_info表中查看管理员的用户名和密码然后登录。

**注意**
- final.sql 文件是本系统的数据库文件 使用navicat导入mysql数据库. 或通过source final.sql 执行导入
- 开发时使用的Tomvat版本是7.0  jdk为1.7版本 如果出现与你的eclipse不兼容问题 可以将Tomcat服务器版本 和jdk版本换到与上述版本一致再试
    - 同样兼容 sdk9.0 java version:10.0.1， tomcat为9.0 
- 出现其他问题时，请自行百度或者联系qq1062852837（不一定会同意,妹子例外）
如果这个简陋的系统能够对你提供一丝丝学习过程中的帮助，真的万分荣幸。
