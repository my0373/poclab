# poclab
A set of Ansible Roles and Playbooks for configuring and setting up different POC environments.

Within this single project are a number of roles for quickly provisioning a number of different scenarios.

This document will describe each of these roles, and specific settings that can be configured.

Although each of the roles is described at a high level here, ideally there will be a seperate document per POC scenario. This will allow us to provide suggested settings, and tips to make your POC run more smoothy.

### What is included
#### Project
This is an Ansible project, that contains all of the components required to deploy POC scenarios.
The project has been broken down into Ansible Roles, which in turn contain many tasks, with templates and other resources.


#### Included Ansible Roles

```
roles/
├── common
└── idm
```

### Ansible Role - Common
#### Description
This role applies a standard set of configuration to all systems that are to be part of the POC.

This is particularly important as it will set up a standard baseline, and ensure components such as DNS, NTP are configured consistently across the environment. An example of this is certificate based authentication, which relies heavily upon accurate, and consistent clocks, as well as forward and reverse name resolution.
#### Tasks (in order of execution)
  - Generate a standard MOTD (from an included template)
  - Refresh the RHEL subscription (optional)
  - Install some basic CLI tools.
  - Configure NTP.

```
roles/common/tasks
├── configure_ntp.yaml
├── install_cli_tools.yaml
├── main.yaml
├── motd.yaml
└── refresh_subscription.yaml
```

#### Settings
The settings for the common role can be viewed and modified here
```
poclab/roles/common/defaults/main.yaml
```


### IDM
#### Description
IDM is the Red Hat supported version of the community FreeIPA project.
It is included in Red Hat Enterprise Linux Server, tip of the hat to the guys at the FreeIPA project, link to the upstream project is in the credits below.

#### Tasks (in order of execution)

  - Configure entropy on the system
  - Install the IDM packages
  - Configure the IDM server.
  - Configure IDM Firewall rules
  
```
roles/idm/tasks
├── configure_idm_firewall.yaml
├── configure_idm_install.yaml
├── get-entropy.yml
├── install_idm.yaml
└── main.yaml
```


#### Settings
The settings for the IDM role can be viewed and modified here

```
poclab/roles/idm/defaults/main.yaml
```



### Credits
As you will be aware, all of the components we are configuring are here because of Open Source and Free Software.
A quick tip of the hat to all the open source projects and contributors that make Open Source possible.

Just some of the projects & people that have made this possible
- The Ansible Project 
    - http://www.ansible.com
    - https://github.com/ansible/ansible
- The FreeIPA Project
    - https://www.freeipa.org/page/Main_Page
- The Fedora Project
    - https://getfedora.org/
