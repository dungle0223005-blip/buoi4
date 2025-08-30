# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0.85-jdk17-temurin

# Xóa các ứng dụng mặc định của Tomcat (ROOT, docs, examples...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy toàn bộ ứng dụng của bạn (đã build thành .war) vào Tomcat
# Giả sử bạn đã build ra file email-list.war trong thư mục target
COPY dist/ch05_ex1_email.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
