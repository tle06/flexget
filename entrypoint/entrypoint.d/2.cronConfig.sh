#!/usr/bin/bash
touch /tmp/mycron
echo "@hourly /usr/local/bin/flexget -c /config/config.yml --cron execute" >> /tmp/mycron
echo "@reboot /usr/local/bin/flexget -c /config/config.yml daemon start -d" >> /tmp/mycron
crontab /tmp/mycron