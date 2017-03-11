#!/bin/zsh

sudo apt-get install -yq --no-install-suggests --no-install-recommends ntpdate

TEMP=$(cat <<EOF
# sync time every 10 minutes.
*/10 * * * *   /usr/sbin/ntpdate cn.pool.ntp.org >> /etc/cron.d/logs 2>&1
EOF
)

echo $TEMP | sudo crontab -
unset $TEMP
