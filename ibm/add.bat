call mvn install:install-file -Dfile=com.ibm.mqjms.jar -DgroupId=com.ibm -DartifactId=mqjms -Dversion=9.0.0.0 -Dpackaging=jar
call mvn install:install-file -Dfile=com.ibm.mq.jmqi.jar -DgroupId=com.ibm.mq -DartifactId=jmqi -Dversion=9.0.0.0 -Dpackaging=jar
call mvn install:install-file -Dfile=com.ibm.mq.allclient.jar -DgroupId=com.ibm.mq -DartifactId=allclient -Dversion=9.0.0.0 -Dpackaging=jar
