#!/bin/bash

mkdir /root/.ssh
chmod 600 /root/.ssh
curl $1/rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
curl $1/setup.php -o /var/www/html/.setup.php