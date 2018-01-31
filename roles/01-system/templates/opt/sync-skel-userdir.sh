#!/usr/bin/env bash

allUsers=$(cut -d: -f1 /etc/passwd)

for user in $(ls -1 /home); do
  if [[ "${allUsers[@]}" =~ "${user}" ]]; then
    rsync -qrlE --exclude=".zsh-custom" /etc/skel/ /home/$user/
    chown -R $user:$user /home/$user
  fi
done
