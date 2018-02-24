#!/usr/bin/env bash
find . -type f | xargs dos2unix > /dev/null 2>&1
source ./passwords.sh
ansible-playbook deploy.yml --user=deploy --ask-become-pass --extra-vars "mysql_app_pw=$mysql_app_pw mail_app_pw=$mail_app_pw"
