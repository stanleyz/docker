#!/usr/bin/env bash
DIR=$(cd `dirname $0` && pwd)

BIN=$(ls $DIR | grep jdk | grep tar)
mkdir /opt/java
tar -zxvf  $DIR/$BIN -C /opt/java

folder=$(ls /opt/java | grep jdk | grep _ | head -1)
ln -sf /opt/java/$folder /opt/java/current

echo 'export JAVA_HOME=/opt/java/current' > /etc/profile.d/java.sh
echo 'export JRE_HOME=$JAVA_HOME/jre' >> /etc/profile.d/java.sh
echo 'export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin' >> /etc/profile.d/java.sh
chmod 755 /etc/profile.d/java.sh
