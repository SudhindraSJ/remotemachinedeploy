#!/bin/sh

if [ $ENVIRONMENT = "QA" ];then
sshpass -p "gamutp" scp target/tacobell.war gamutp@172.17.0.2:/home/gamutp/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "gamutp" ssh gamutp@172.17.0.2 "JAVA_HOME=/home/gamutp/jdk1.8.0_181"/home/gamutp/distros/apache-tomcat/bin/startup.sh

elif [$ENVIRONMENT= "SIT"] 

then


sshpass -p "sitdeploy" scp target/tacobell.war sitdeploy@172.17.0.3:/home/sitdeploy/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "sitdeploy" ssh sitdeploy@172.17.0.3 "JAVA_HOME=/home/sitdeploy/distros/jdk1.8"/home/sitdeploy/distros/apache-tomcat/bin/startup.sh



fi

