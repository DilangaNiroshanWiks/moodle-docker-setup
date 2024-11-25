#!/bin/bash
# Variables
CONTAINER_NAME="moodle-docker-setup-mariadb-1"
BACKUP_FILE="moodle_backup.sql"

# Use docker-compose exec instead of docker exec
docker compose exec -T mariadb /opt/bitnami/mariadb/bin/mariadb-dump -u bn_moodle -p bitnami_moodle > "$BACKUP_FILE"

# Inform the user
echo "Backup of Moodle database created: $BACKUP_FILE"
