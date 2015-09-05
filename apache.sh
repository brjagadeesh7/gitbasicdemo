#!/bin/bash
#chkconfig 2345 60 30

JAVA_HOME=/usr/local/java/jdk160_05
export JAVA_HOME

APACHE_HOME=/usr/local/Apache
export APACHE_HOME

case $1 in

start ) bash $APACHE_HOME/bin/apachectl start
        echo "Apache is Started"
;;
stop ) bash $APACHE_HOME/bin/apachectl stop
       echo "Apache is Stopped"
;;

restart )bash $APACHE_HOME/bin/apachectl stop
         echo "Apache is stopped"

         bash $APACHE_HOME/bin/apachectl start
         echo "Apache is restarted"
;;

status ) ps -ef|grep -v grep|grep -i http
         echo "Current status is :"
;;

version )bash $APACHE_HOME/bin/apachectl -v
         echo "Apache Version"
;;

* )echo "Invalid Arguement"
echo "Usage:Service Apache start/stop/restart/version/status"

esac


