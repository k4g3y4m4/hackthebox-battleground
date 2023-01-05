#!/bin/bash
#-/access-hbg.sh #ipaddress #password-root
sshpass -p $2 ssh -o GlobalKnownHostsFile=/dev/null -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$1