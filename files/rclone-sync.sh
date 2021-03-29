# name/path for remote
DROPBOX_PATH=drop-jk:/misc

# Sync location for my dropbox account
DROPBOX=~/sync/drop
# backup for local (if upstream and local are both changed)
DROPBOX_BACKUP=~/sync/.drop-back

# An exclude file to ignore temporary files such as vim's *.swp, etc
EXCLUDE_FILE=~/.config/rclone/rclone.exclude

# Sync new dropbox, backup changed local files first.
echo "<<<<< Getting updates from cloud"
rclone copy -u -v ${DROPBOX_PATH} ${DROPBOX} \
    --backup-dir ${DROPBOX_BACKUP} \
    --suffix .$(date +"%Y-%m-%d-%H-%M-%S")

# sync dropbox with local changes excluding any garbage files
echo ">>>>> Pushing updates to cloud"
rclone sync -v ${DROPBOX} ${DROPBOX_PATH} --exclude-from ${EXCLUDE_FILE}
