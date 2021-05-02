#!/bin/bash
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
clear                                             
echo -e '+======================================================================+'
echo -e '+                                                                      +'
echo -e '+          To set password just run "passwd root" command              +'
echo -e '+ Go to your VPS credentials or "identities" if you are using juicessh +'          
echo -e '+         Set your username to "root" then input your password"        +'
echo -e '+                                                                      +'
echo -e '+======================================================================+'
systemctl restart ssh

exit 1
rm -f vpsroot.sh
