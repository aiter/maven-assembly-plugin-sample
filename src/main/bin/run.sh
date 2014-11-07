#!/bin/bash
#设置环境变量
. /etc/profile
. ~/.bash_profile

MY_ROOT=$(cd "$(dirname "$0")"; pwd)
echo $MY_ROOT
cd $MY_ROOT

JAVA_OPTS="$JAVA_OPTS -Drun_dir=$MY_ROOT"
JAVA_OPTS="$JAVA_OPTS -Xss256k -Xms1024m -Xmx1024m -Xss256k"
JAVA_OPTS="$JAVA_OPTS -XX:PermSize=128m -XX:MaxPermSize=128m"
JAVA_OPTS="$JAVA_OPTS -XX:+DisableExplicitGC -XX:ParallelGCThreads=16 -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:+UseParNewGC"
JAVA_OPTS="$JAVA_OPTS -XX:CMSFullGCsBeforeCompaction=5 -XX:CMSInitiatingOccupancyFraction=80 -XX:MaxTenuringThreshold=15 "
#JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintSafepointStatistics -XX:+PrintTenuringDistribution -XX:+PrintHeapAtGC -Xloggc:./gc.log "
JAVA_OPTS="$JAVA_OPTS -Dclient.enczoding.override=UTF-8 -Dfile.encoding=UTF-8 -Duser.language=zh -Duser.region=CN"
JAVA_OPTS="$JAVA_OPTS -Djava.ext.dirs=../lib -Djava.library.path=../lib -cp ../conf/"

echo $JAVA_OPTS

java $JAVA_OPTS com.jihaoxian.sample.MavenAssembly $@ &
