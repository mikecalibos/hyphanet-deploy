FROM openjdk:17-jre-slim
WORKDIR /app

# Download the Hyphanet installer
ADD https://download.hyphanet.org/new_installer_offline.jar /app/installer.jar

# On container start:
# 1) Run first-time installer in console mode
# 2) Launch the node
CMD ["sh", "-c", "java -jar installer.jar -console && java -jar installer.jar"]
