#!/usr/bin/env python3

# usr: utf-8

from sqlalchemy import delete

from Alchemy import engine, user

connection = engine.connect()

d = connection.execute(delete(user).where(user.c.name == 'Han'))

print(d.rowcount)