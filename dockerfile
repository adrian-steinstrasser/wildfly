FROM bitnami/wildfly:30.0.1

# Copia o keystore
COPY keystore.jks /opt/jboss/wildfly/standalone/configuration/certs/keystore.jks

# Cria usuário admin para console de administração
RUN /opt/jboss/wildfly/bin/add-user.sh admin adminadmin --silent

# Expõe as portas do WildFly e as portas customizadas
EXPOSE 8080 8181 9990
