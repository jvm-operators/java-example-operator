FROM jkremser/mini-jre:8.1

ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"

LABEL BASE_IMAGE="jkremser/mini-jre:8"

ADD target/my-new-operator-*.jar /my-new-operator.jar

CMD ["/usr/bin/java", "-jar", "/my-new-operator.jar"]
