FROM openjdk:11-jre-slim

EXPOSE 8080
ENV TZ=Asia/Seoul

ENV DB_NAME=${{ secrets.DB_NAME }}
ENV DB_PASSWORD=${{ secrets.DB_PASSWORD }}
ENV DB_URL={{ secrets.DB_URL }}
ENV DB_USERNAME={{ secrets.DB_USERNAME }}

ADD build/libs/*.jar application.jar
ENTRYPOINT ["java", "-jar", "/application.jar"]