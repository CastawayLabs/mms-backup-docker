#!/bin/bash

sed -i "/mmsApiKey=/c\mmsApiKey=${MMS_KEY}" /etc/mongodb-mms/backup-agent.config

/usr/bin/mongodb-mms-backup-agent -c /etc/mongodb-mms/backup-agent.config 2>&1
