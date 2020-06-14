#!/usr/bin/env bash
cd /
#/usr/bin/python /usr/bin/odoo --load=web,mail_tracking,mail_sendgrid
/usr/bin/python /usr/bin/odoo -u oehealth_samu -d DOCKER_DB_SAMU &
#/usr/bin/python /usr/bin/odoo
tail -F -n0 /etc/hosts
