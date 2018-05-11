如何使用本系统：
第一步：clone本项目到你的电脑上
第二步：将Essay_student项目导入到你的eclipse
第三步：将sql文件导入到你的mysql数据库中，推荐使用navicat
第四步：进入Essay_Student/src下，打开数据库配置文件db.properties
将其中的user和password改为你电脑中mysql数据库的用户名和密码
第五步：在eclipse中进入/Essay_Student/WebContent/Essay/admin中打开login_1.html 右键单击->run->run on server在Tomcat服务器上运行
第六步：如果上述一切顺利的话 你将会进入到登录界面，可以去数据库t_man_info表中查看管理员的用户名和密码然后登录。

注意：
1.final.sql 文件是本系统的数据库文件 使用navicat导入mysql数据库
2.开发时使用的Tomvat版本是7.0  jdk为1.7版本 如果出现与你的eclipse不兼容问题 可以将Tomcat服务器版本 和jdk版本换到与上述版本一致再试
3.出现其他问题时，请自行百度或者联系qq1062852837（不一定会同意,妹子例外）
如果这个简陋的系统能够对你提供一丝丝学习过程中的帮助，真的万分荣幸。
