# Settings

## PostgreSQL: Allow Remote Connections
```bash
# vim /etc/postgresql/12/main/postgresql.conf

listen_addresses = '*'

# sudo systemctl restart postgresql
```

```bash
# vim /etc/postgresql/12/main/pg_hba.conf

host    all             all              0.0.0.0/0                       md5
host    all             all              ::/0                            md5
```

## Create odoo role as SUPERUSER in PostgreSQL
```bash
# sudo su - postgres

postgres=# CREATE ROLE odoo WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'odoo';
```

# docker commit

## Description

Create a new image from a container's changes

## Usage
```bash
# docker commit -m="Commit message" CONTAINER_ID herlesinc/odoo10ce:2.0
```
# docker push

## Description

Push image to dockerhub

## Usage
```bash
# docker login --username=herlesinc --email=herles.incalla@gmail.com
# docker push herlesinc/odoo10ce:2.0
```

# Saving and loading images
## Description
For make(save) a copy
```bash
# docker save odoo10ce:2.0 > odoo10ce.2.0.tar
```

For restore(load) a copy
```bash
# docker load --input odoo10ce.2.0.tar
```
