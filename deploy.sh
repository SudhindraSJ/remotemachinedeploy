#!/bin/bash


if [ $ENVIRONMENTV = "QAA" ]; then
var='cat IPs.txt'
 for i in $var 

 do

sshpass -p "tacouser" scp target/paytmemart.war tacouser@$i:/home/tacouser/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i QAA server"
         sleep 3
sshpass -p "tacouser" ssh tacouser@$i "JAVA_HOME=/home/tacouser/jdk1.8.0_181"/home/tacouser/distros/apache-tomcat/bin/startup.sh

done

elif [ $ENVIRONMENTV = "SITT" ]; then

var1='cat IPs1.txt'
for i in $var1 

 do
sshpass -p "paytmuserp" scp target/paytmemart.war paytmuserp@$i:/home/paytmuserp/distros/apache-tomcat/webapps
         echo "Starting tomcat server in $i SITT server"
         sleep 3
sshpass -p "paytmuserp" ssh paytmuserp@$i "JAVA_HOME=/home/paytmuserp/distros/jdk1.8"/home/paytmuserp/distros/apache-tomcat/bin/startup.sh
done

else
   echo "None of the condition met"

fi
































