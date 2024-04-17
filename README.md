# Jasper Report exemple using python

A report generate example using Python, JasperReport and PostgresSQL

## Guide

- First of all, create a database named `cadastro`(default option)
- then, restore postgres dump in `sql/cadastro.sql` using command ballow.

```bash
pg_restore -U <username> -d cadastro -f sql/cadastro.sql
```

- then, copy .credential_db-exemple.ini and add yours database credentials.

```bash
cp .credential_db-exemple.ini .credential_db.ini
```

- finally, install requirements `pip install -r requirements.txt` and run the exemple `python main.py` .
