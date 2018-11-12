FROM java:8-jre
VOLUME /tmp
ADD newtest.jar newtest.jar
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TZ "Asia/Shanghai"
ENTRYPOINT ["java","-jar", "/newtest.jar"]
