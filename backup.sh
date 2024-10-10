#!/bin/bash

# Variables
CONTAINER_NAME="moodle_mariadb_1"  # Name of your MariaDB container
BACKUP_FILE="moodle_backup.sql"

# Backup the database using mariadb-dump
docker exec -i "$CONTAINER_NAME" /opt/bitnami/mariadb/bin/mariadb-dump -u bn_moodle -p bitnami_moodle > "$BACKUP_FILE"

# Inform the user
echo "Backup of Moodle database created: $BACKUP_FILE"
