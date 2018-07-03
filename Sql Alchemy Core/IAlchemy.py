#!/usr/bin/env python3

# usr: utf-8

from Alchemy import engine, user

connection = engine.connect()

# Insert

# connection.execute(user.insert().values(name='Darth', password='123'))

connection.execute(user.insert(), [  # Bulk
    {'name': 'Leia', 'password': '321'},
    {'name': 'Luke', 'password': '456'},
])
