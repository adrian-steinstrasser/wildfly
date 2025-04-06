# Base com OpenJDK 17 (Adoptium Temurin)
FROM eclipse-temurin:17-jdk

# Define variáveis padrão
ENV JBOSS_HOME=/opt/wildfly
ENV JAVA_HOME=/opt/java/openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

# Copia sua instalação WildFly já pronta
COPY wildfly/ /opt/wildfly/

# Dá permissão de execução aos scripts
RUN chmod +x /opt/wildfly/bin/*.sh

# Expõe portas necessárias
EXPOSE 8080 8181 9990

# Comando padrão: inicia WildFly em modo domain com bind total
CMD ["/opt/wildfly/bin/domain.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

