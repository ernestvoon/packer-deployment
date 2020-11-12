## packer-deployment

This project deploys a Windows enviroment including a Windows DC, a Windows DHCP and a Windows 10 client.

All the scripts for Packer, Ansible and Vagrant that is required for a school module deployment.

DISCLAIMER: The codes are not complete and configuration is different for every enviroment. This may not work on your enviroment you deploy on, remember to configure it to suit your enviroment needs.

## Quickstart

# Packer
The Packer scripts refers to the json file provided as an input and a quick way to build the image for this lab is to run,

> packer build --only=virtualbox-iso xxx.json

*The project is currently not compatible with any other hypervisors other than VirtualBox.*

# Ansible
This repository executes the provisoning scripts from Packer or Vagrant but if you wish to try out the scripts you can execute,

> ansible-playbook xxx.yml

Note that the inventory file of Ansible has to be configured before executing the playbook.

# Vagrant
The Vagrantfile provided works together with the Packer image built Vagrantfile. For the enviroment to be deployed by Vagrant,

> vagrant up

*The Windows client will be unresponsive after booting up as the connection will be disconnected due to unreachable host. Manually execute the playbook or execute vagrant up after the boot has timeout.*
