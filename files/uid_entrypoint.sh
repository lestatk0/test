#!/bin/sh
if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    echo "${USER_NAME:-default}:x:$(id -u):0:${USER_NAME:-default} user:/home/default:/sbin/nologin" >> /etc/passwd
    cat /home/tiger/.ssh/id_rsa >> /home/default/.ssh/id_rsa
    cat /home/tiger/.ssh/ssh_wrapper.sh >> /home/default/.ssh/ssh_wrapper.sh
    chmod 0600 /home/default/.ssh/id_rsa
    ## setting ssh for git
    cat > /home/default/.ssh/config << EOF
    Host *
      StrictHostKeyChecking no
      UserKnownHostsFile=/dev/null
EOF
  fi
fi
exec "$@"