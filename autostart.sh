#!/usr/bin/env bash
cd /
#/usr/bin/python3 /usr/bin/odoo -u oehealth_samu -d DOCKER_DB_SAMU &
/usr/bin/python3 /usr/bin/odoo
tail -F -n0 /etc/hosts
