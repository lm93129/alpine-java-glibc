#!/bin/bash
# COLLECTOR_IP为pinpoint的ip,如果需要配置其它的pinpoint参数，则参照sed进行匹配修改
# applicationName和agentId为pinpoint上的配置
# 如果设置pinpoint为false，则不使用pinpoint

if [ $pinpoint == "true" && $pinpoint != "false" ]; then
  sed -i "/profiler.collector.ip=/ s/=.*/=$COLLECTOR_IP/" /root/pinpoint-agent/pinpoint.config
  java -jar -javaagent:/root/pinpoint-agent/pinpoint-bootstrap-1.8.3.jar \
  -Dpinpoint.applicationName=$applicationName \
  -Dpinpoint.agentId=$agentId \
  -Djava.security.egd=file:/dev/./urandom \
  -jar /app/app.jar
else
 java -Djava.security.egd=file:/dev/./urandom -jar /app/app.jar
fi

exec "$@"
