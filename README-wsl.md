# Workstation Configuration notes (WSL)

Automation steps for configuring Windows Subsystem for Linux to streamline configuration of a fresh WSL instance.  (may also be used for ubuntu workstation, TBD)

Version of ubuntu in wsl used is `20.04 LTS`

in a windows terminal, run:
``` cmd
wsl --install -d Ubuntu
```

Wait for installation to complete and then run the following to ensure it's up to date:
``` cmd
wsl --user root apt update
wsl --user root apt upgrade -y
wsl --user root apt install pip -y
wsl --user root add-apt-repository --yes --update ppa:ansible/ansible
wsl --user root apt install ansible -y
```
