# Flyway DB Migrations

Este repositorio contiene las migraciones de base de datos y los recursos necesarios para gestionar el versionamiento de la base de datos usando Flyway.

## Estructura del repositorio

- `configurations/`: Archivos de configuración para Flyway.
- `migrations/`: Archivos SQL de migración.
- `k8s/`: Manifiestos de Kubernetes organizados en `base` y `overlays`.

## Uso

1. Construir la imagen Docker:
   ```bash
   docker build -t flyway-migrations:local .
   ```

2. Aplicar los manifiestos en Minikube:
   ```bash
   kubectl apply -k k8s/overlays/dev
   ```