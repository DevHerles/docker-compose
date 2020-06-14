#!/usr/bin/env bash
cd /
/usr/bin/python /usr/bin/odoo -u saludtrabajo -d DOCKER_SALUDTRABAJO &
#/usr/bin/python /usr/bin/odoo &
tail -F -n0 /etc/hosts
