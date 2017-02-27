#!/bin/bash
# Simple shell script to act as a wrapper.
#ansible-playbook --ask-become-pass ./master.yaml -v --tags="debug"
#ansible-playbook  ./master.yaml -v --tags="dhcp" 
ansible-playbook  ./master.yaml --force-handlers
