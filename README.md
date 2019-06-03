基于 anapsix/alpine-java:8 构建的 Java 环境，内置了pinpoint-agent，并设置了时区为上海

| 软件           | 版       |
| -------------- | -------- |
| alpine         | 3.8      |
| glibc          | 2.29-r0  |
| java 8  ORACLE | 8u202b08 |
| pinpoint-agent | 1.8.3    |

demo_dockerfile为anapsix/alpine-java的dockerfile。
registry.cn-hangzhou.aliyuncs.com/lm93129/java:8_jdk_alpine_glibc是从dockerhub重传到阿里云镜像上的