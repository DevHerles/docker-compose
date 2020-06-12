## Settings

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
