# poclab
A set of Ansible Roles and Playbooks for configuring and setting up different POC environments.

####The currently included roles

```
roles/
├── common
└── idm
```

### Common
#### Description
This role is the default role applied to all systems that are to be part of the POC.
#### Tasks (in order of execution)
  - Generate a standard MOTD.
  - Refresh the RHEL subscription.
  - Install some basic CLI tools.
  - Configure NTP.

### IDM
#### Description
IDM is the Red Hat supported version of the community FreeIPA project.
It is included in Red Hat Enterprise Linux Server, tip of the hat to the guys at the FreeIPA project, link to the upstream project is in the credits below.

#### Tasks (in order of execution)
  - Generate a standard MOTD.
  - Refresh the RHEL subscription.
  - Install some basic cli tools.
  - Configure NTP.

#### IDM
IDM is version of the FreeIPA project included in Red Hat Enterprise Linux.

The FreeIPA project can be found here (https://www.freeipa.org/page/Main_Page).

#### Role
The role for IDM is called idm.

#### All default role settings are in

/roles/idm/defaults/main.yaml


#### Credits
Just a quick tip of the hat to all the open source projects and contributors that make Open Source possible.