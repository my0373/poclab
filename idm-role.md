# IDM Ansible Role
### Configuration
All of the configuration is stored in the file
```
roles/idm/defaults/main.yaml
```

### Templates
These are the templates included.
```
./poclab/roles/idm/templates
└── idm_install_script.j2
```
#### Template descriptions
- idm_install_script.j2 - The IDM install script base templates




### The installation method.
The approach i've taken is to generate a BASH script using Ansible, and to execute it.
This may not seem very "Ansible" or " Pythonic", but my reasons are simple. There is a permenant record of what was installed, the options and the values used. This is useful when trying to debug, or when explaining how we installed the system.
 
At a later point in time, I may write a python module to do this, however I dislike the shell command, so until I do, this is my preferred approach. 

