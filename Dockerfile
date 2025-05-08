FROM flyway/flyway:11.8.1-alpine

# Copia configuración base (opciones comunes)
COPY config/flyway.conf /flyway/conf/flyway.conf

# Copia migraciones al lugar correcto
COPY migrations/ /flyway/sql/

# Entrypoint estándar de Flyway (usa flyway.conf para opciones base)
ENTRYPOINT ["flyway", "-configFiles=/flyway/conf/flyway.conf"]
CMD ["migrate"]