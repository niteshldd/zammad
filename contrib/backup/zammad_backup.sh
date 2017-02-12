#!/bin/bash
#
# zammad backup script
#

PATH=/sbin:/bin:/usr/sbin:/usr/bin:

# import config
. config

# import functions
. functions

# exec backup
check_database_config_exists

delete_old_backups

get_backup_date

backup_dir_create

backup_files

backup_db
