#!/usr/bin/fish

#set -x SSH_ASKPASS /usr/lib/ssh/ssh-askpass
set -x SSH_ASKPASS /usr/bin/ksshaskpass

envoy -t ssh-agent
#eval (envoy -p --fish)
#eval (envoy -p --fish | sed 's|-x|-gx|')

