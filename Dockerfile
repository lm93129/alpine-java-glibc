FROM registry.cn-hangzhou.aliyuncs.com/lm93129/java:8_jdk_alpine_glibc
 
RUN apk --no-cache add tzdata  && \
  ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
  echo "Asia/Shanghai" > /etc/timezone 
