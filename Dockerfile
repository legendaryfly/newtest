FROM java:8-jre
ADD target/newtest.jar /opt/edobee-app-api/
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TZ "Asia/Shanghai"
WORKDIR /opt/edobee-app-api/
CMD ["java","-jar", "newtest.jar"]
