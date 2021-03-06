# Workstation config playbook
Why: Reset/Rebuild laptop wherever I need it
What: Ansible for Fedora workstation (33)
How: Ansible

- From a fresh install
```
sudo dnf install ansible -y
```
- Enable passwordless sudo
  - `sudo visudo` and edit to ensure the line is present
  ```
  %wheel  ALL=(ALL) NOPASSWD: ALL
  ```
  - copy your user public key to /root/.ssh/authorized_keys

## Current Capbilities  
Install the apps
`ansible-playbook setup.yml <--ask-vault-pass>`

## Notes
- Using `snap` requires a session logout/login. 
- Disable secureboot :( 
- For GNS3, use pip and a specific version
    ```
    pip3 install gns3-gui==2.1.21
    ```
- Add vault'd secrets (or access to hashi vault service?) for licensed software.