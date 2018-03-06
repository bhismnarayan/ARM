#!/bin/bash
# This script  downloads and installs the nessus agent on rhel
#wget https://appautomationdev003.blob.core.windows.net/software/NessusAgent-7.0.2-es6.x86_64.rpm
wget https://appautomationdev003.blob.core.windows.net/software/NessusAgent-7.0.2-ubuntu1110_amd64.deb
sudo dpkg -i NessusAgent-7.0.2-ubuntu1110_amd64.deb
sudo etc/init.d/nessusagent start
sudo /opt/nessus_agent/sbin/nessuscli agent link --key=a521b5ff16a5d5272109d675bba8d84bd07e7126d686c1966ec8e1fce13abd16  --groups=OC_Dev_Platform  --host=cloud.tenable.com --port=443
