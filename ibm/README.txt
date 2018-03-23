Fix name:                 9.0.0.0-WS-MQ-JavaVM-LAIT14385A.zip
Product:                  WebSphere MQ V9.0.0(WS-MQ)
Platform:                 Java (JavaVM)
Maintenance level:        9.0.0.0 *** ONLY APPLY THIS FIX TO A 9.0.0.0 INSTALLATION ***
Date:                     January 31st, 2017
Issues fixed in package:  IT14385

Description:
------------
JMS Object messages depend on Java Serialization for marshalling/unmarshalling of the message payload. Deserialization of 
untrusted data can lead to security flaws; a remote attacker could use this to execute arbitrary code with the permissions 
of the application that is using a JMS ObjectMessage. Additionally, applications that consume ObjectMessage type of messages 
can be vulnerable as they deserialize objects on ObjectMessage.getObject() calls. 

Serialization whitelisting, added to the IBM MQ classes for JMS as part of IT14385, is a potential mitigation against some of 
the risks that serialization poses. By explicitly specifying which classes can be encapsulated in, and extracted from, 
ObjectMessages, whitelisting provides some protection against some serialization risks.

Details about the serialization whitelisting functionality, and how to enable it, can be found in the topic called:

  ClassName whitelisting in JMS ObjectMessage

in the IBM MQ V9.0 section of IBM Knowledge Center. The URI for this topic is shown below:

http://www.ibm.com/support/knowledgecenter/en/SSFKSJ_9.0.0/com.ibm.mq.dev.doc/q127290_.htm
 
    
Package contents:
-----------------

Filename                 Description - see "Instructions" below
----------------------------------------------------------------------
README.txt                This Readme file
com.ibm.mq.allclient.jar  JAVAJAR
com.ibm.mq.jmqi.jar       JAVAJAR
com.ibm.mqjms.jar         JAVAJAR

Instructions:
-------------
*** YOU MUST HAVE ROOT/ADMINISTRATOR RIGHTS TO INSTALL THIS FIX ***
Instructions for MQ V9.0.0 fixes:
  Below you will see instructions for each type of file listed above.

Instructions for JAVAJAR files:
  1. Stop any MQ classes for JMS applications.
  2. Backup the files to be replaced from the MQ_INSTALL/java/lib directory.
  3. Replace the files from the MQ_INSTALL/java/lib directory with those found in this zip file.
  4. Restart the MQ classes for JMS applications.
 
  