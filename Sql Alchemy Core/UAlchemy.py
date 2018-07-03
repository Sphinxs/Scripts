#!/usr/bin/env python3

# usr: utf-8

from Alchemy import engine, user

from sqlalchemy import update

connection = engine.connect()

u = connection.execute(update(user).where(user.c.name == 'Luke')
                       .values(name='Han'))

print(u.rowcount)