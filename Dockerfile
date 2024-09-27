# Use a imagem oficial do OpenJDK
FROM openjdk:21-jdk-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo JAR gerado para o contêiner
COPY target/jpa.jar app.jar

# Expõe a porta que sua aplicação utiliza
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
