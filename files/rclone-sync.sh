# name/path for remote
DROPBOX_PATH=jk-dropbox:/misc

# Sync location for my dropbox account
DROPBOX=~/personal/drop
# backup for local (if upstream and local are both changed)
DROPBOX_BACKUP=~/personal/drop-back

# An exclude file to ignore temporary files such as vim's *.swp, etc
EXCLUDE_FILE=~/.config/rclone/rclone.exclude

# Sync new dropbox, backup changed local files first.
rclone copy -u -v ${DROPBOX_PATH} ${DROPBOX} \
    --backup-dir ${DROPBOX_BACKUP} \
    --suffix .$(date +"%Y-%m-%d-%H-%M-%S")

# sync dropbox with local changes excluding any garbage files
rclone sync -v ${DROPBOX} ${DROPBOX_PATH} --exclude-from ${EXCLUDE_FILE}
