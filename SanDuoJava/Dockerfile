# 베이스 이미지를 선택합니다.
FROM maven:3.8.3-openjdk-11-slim AS build

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 프로젝트의 pom.xml 파일을 복사합니다.
COPY pom.xml .

# Maven으로 라이브러리를 다운로드합니다.
RUN mvn dependency:go-offline

# 소스 코드를 복사하고 WAR 파일을 빌드합니다.
COPY src ./src
RUN mvn package

# Tomcat 이미지를 기반으로 새로운 이미지를 생성합니다.
FROM tomcat:8.5-jdk11-openjdk-slim

# 작업 디렉토리를 설정합니다.
WORKDIR /usr/local/tomcat

# 기본 ROOT 폴더를 삭제합니다.
RUN rm -rf webapps/ROOT

# WAR 파일을 Docker 이미지에 복사합니다.
COPY --from=build /app/target/*.war webapps/ROOT.war

# 포트를 노출시킵니다.
EXPOSE 8080

# 컨테이너가 시작될 때 실행할 명령어를 설정합니다.
CMD ["catalina.sh", "run"]