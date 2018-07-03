#!/usr/bin/env python3

# usr: utf-8

from sqlalchemy import select

from Alchemy import user  # Table

s = select([user])

for row in s.execute():
    print(f'\n{row[1]} \033[31m{row[2]}\033[37m\n')