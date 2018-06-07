#!/bin/zsh

sudo echo '30 *    * * * root sync && sysctl vm.drop_caches=3' >> /etc/crontab
