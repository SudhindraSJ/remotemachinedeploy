#!/bin/sh

if [ $ENVIRONMENTV = "QAA" ];then
sshpass -p "tacouser" scp target/paytmemart.war tacouser@172.17.0.4:/home/tacouser/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QAA server"
         sleep 3
sshpass -p "tacouser" ssh tacouser@172.17.0.4 "JAVA_HOME=/home/tacouser/jdk1.8.0_181"/home/tacouser/distros/apache-tomcat/bin/startup.sh

elif [$ENVIRONMENTV= "SITT"] 

then


sshpass -p "paytmuserp" scp target/paytmemart.war paytmuserp@172.17.0.5:/home/paytmuserp/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i SITT server"
         sleep 3
sshpass -p "paytmuserp" ssh paytmuserp@172.17.0.5 "JAVA_HOME=/home/paytmuserp/distros/jdk1.8"/home/paytmuserp/distros/apache-tomcat/bin/startup.sh



fi



