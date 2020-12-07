# List all manual tasks here and potential reasons why
- MetaNetworks
    - Login wall for onboarding a new device
    - After install, modify selinux
    ```
    sudo grep 'ipsec\|policykit_auth_t\|chrony' /var/log/audit/audit.log | audit2allow -a -M my_ipsec && sudo semodule -i my_ipsec.pp
    ```
    *note* Still can't get this working with dns issues

- Dash to panel
    - Can't seem to find this through dnf
    - https://extensions.gnome.org/extension/1160/dash-to-panel/
    
- rclone configuration/setup
    - initialize rclone manually (requires web authentication to service to initialize)
    - put files/rclone-sync.sh somewhere (can create a better script with a template)
    - touch ~/.config/rclone/rclone.exclude (can add *.swp, etc to this file?)
    - create local sync folder and local sync-backup folder (for when merge conflicts make a local backup)
    - edit script to reflect remote and local targets
    - create cron job to run script regularly to keep local synced. (maybe every 30m could get fancy with update schedule)

