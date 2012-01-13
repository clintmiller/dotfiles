
#if [ -z "$SSH_AUTH_SOCK" ]; then
# eval `ssh-agent`
# trap "kill $SSH_AGENT_PID" 0
#fi

#ssh-add ~/.ssh/id_office_rsa

