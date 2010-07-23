#!/bin/sh

JAVA_LIB_DIR=$HOME/programs/java/lib
JAVA_LANG_DIR=$HOME/programs/java/languages
JAVA_PROG_DIR=$HOME/programs/java/programs
JAVA_SERVERS_DIR=$HOME/programs/java/servers

export   JAVA_HOME=/usr/lib/jvm/java-6-sun
export    ANT_HOME=$JAVA_PROG_DIR/ant
export    MVN_HOME=$JAVA_PROG_DIR/maven

#export    ROO_HOME=$JAVA_PROG_DIR/spring-roo
#export  SCALA_HOME=$JAVA_LANG_DIR/scala
#export GROOVY_HOME=$JAVA_LANG_DIR/groovy
#export GRAILS_HOME=$JAVA_PROG_DIR/grails
#export  JRUBY_HOME=$JAVA_LANG_DIR/jruby
#export TOMCAT_HOME=$JAVA_SERVERS_DIR/tomcat

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MVN_HOME/bin:$PATH
#export PATH=$SCALA_HOME/bin:$PATH
#export PATH=$GROOVY_HOME/bin:$PATH
#export PATH=$JRUBY_HOME/bin:$PATH
#export PATH=$GRAILS_HOME/bin:$PATH
#export PATH=$PATH:$ROO_HOME/bin:$PATH
