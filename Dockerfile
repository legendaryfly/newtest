FROM java:8-jre
ADD test.jar /opt/test/
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TZ "Asia/Shanghai"
WORKDIR /opt/test/
CMD ["java","-jar", "test.jar"]
