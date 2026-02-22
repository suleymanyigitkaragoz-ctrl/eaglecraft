FROM eclipse-temurin:8-jre
WORKDIR /app
COPY . .
RUN chmod +x start.sh
EXPOSE 25565
CMD ["./start.sh"]
