#!/usr/bin/env bash
find . -type f | xargs dos2unix > /dev/null 2>&1
ansible-playbook deploy.yml --user=deploy --ask-become-pass
