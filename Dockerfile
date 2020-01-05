FROM adoptopenjdk/openjdk11

ARG ENV
ARG profile

ENV spring-active-profile="-Dspring.profiles.active=${profile}"

USER root

COPY target/openshift-docker-integration-*.jar /opt/openshift-docker-integration/openshift-docker-integration.jar

RUN chmod 777 -R /opt/openshift-docker-integration/openshift-docker-integration.jar

ENV JAR_FILE=/opt/openshift-docker-integration/openshift-docker-integration.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/opt/openshift-docker-integration/openshift-docker-integration.jar"]

#docker build --build-arg ENV=team_e --build-arg profile=dev -t docdoc912/plan-recommendation-engine-api . && docker run --name plan-recommendation-engine-api -p 8090:8090 docdoc912/plan-recommendation-engine-api