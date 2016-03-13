网上商城
=========================

#概述
使用 spring struts2 mybatis框架

#安装运行
搭建编译环境(Ubuntu-12.04) :

    cd /opt
    sudo apt-get install openjdk-6-jdk mysql-server-5.5
    wget http://archive.apache.org/dist/tomcat/tomcat-6/v6.0.37/bin/apache-tomcat-6.0.37.tar.gz
    tar -zxvf apache-tomcat-6.0.37.tar.gz
    
配置数据库 :

    cd shopping
    vi ./src/spring-config-datasource-dbcp.xml # 将数据库密码改为本地密码
    mysql -uroot -p123456 -e "create database shopping;" # 123456改为你的数据库密码
    mysql -uroot -p123456 shopping < shopping.sql
    
编译打包 :

    cd shopping
    mkdir -p WebContent/WEB-INF/classes
    cp -r src/*.xml src/*.properties src/sqlmap/ WebContent/WEB-INF/classes/
    javac -encoding utf-8 -Djava.ext.dirs=./WebContent/WEB-INF/lib/:/opt/apache-tomcat-6.0.37/lib/  -d WebContent/WEB-INF/classes `find ./src/ -name *.java`
    cd WebContent
    jar cvf shopping.war .

运行项目 :

    cd shopping
    mv WebContent/shopping.war /opt/apache-tomcat-6.0.37/webapps
    /opt/apache-tomcat-6.0.37/bin/startup.sh

在浏览器中输入 http://127.0.0.1:8080/shopping  
