FROM flyway/flyway:9.20.0-alpine

# Copiar archivos de configuración
COPY config/ /flyway/conf/

# Copiar migraciones
COPY migrations/ /flyway/sql/

# Establecer entorno por defecto (local, dev, prod)
ENV FLYWAY_ENV=local

# Punto de entrada modificado para cargar el archivo correcto según el entorno
ENTRYPOINT ["sh", "-c", "flyway -configFiles=/flyway/conf/$FLYWAY_ENV.conf $*"]

# Comando predeterminado
CMD ["migrate"]