#!/bin/bash

# Database name
DB_NAME="retail_db"

# Directory where backup files will be stored (relative to project root)
BACKUP_DIR="./db_backups"

# Current date for versioned backups
DATE=$(date +%F)

# Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Ensure pg_dump is available in PATH
pg_dump -d "$DB_NAME" -U postgres > "$BACKUP_DIR/${DB_NAME}_$DATE.sql"

echo "Backup completed: $BACKUP_DIR/${DB_NAME}_$DATE.sql"
