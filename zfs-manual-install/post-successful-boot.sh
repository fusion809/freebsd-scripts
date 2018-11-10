#!/bin/sh
# The next section, if this boot goes well is essentially turning this very basic system into something comfortable to use; this part can be scripted
## Select your timezone
tzsetup
hostname fusion809-vbox
cd /etc/mail
make install
service sendmail onerestart
echo "hostname=fusion809-vbox" >> /etc/rc.conf

# This system will not have internet; to fix this one runs:
dhclient em0
