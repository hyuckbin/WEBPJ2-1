# 1. Maven + JDK (Build Stage)
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# 소스 전체 복사
COPY . .

# Maven 빌드 (WAR 생성)
RUN mvn -DskipTests clean package


# 2. Tomcat (Run Stage)
FROM tomcat:9.0

# build 단계에서 나온 WAR 파일을 ROOT.war 로 배포
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
