#!/bin/bash
supervisord -c /etc/supervisord.conf &
sleep 5
tail -f /var/log/ftpserver.log -f /var/log/ftpserver0.log
