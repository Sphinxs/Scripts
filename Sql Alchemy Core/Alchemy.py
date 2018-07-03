#!/usr/bin/env python3

# usr: utf-8

from datetime import datetime

from sqlalchemy import (create_engine, MetaData, Column,
                        Integer, Table, String, DateTime)

engine = create_engine('sqlite:///test.db',
                       echo=False)  # Creating connection

metadata = MetaData(bind=engine)  # Metadata

# Tables

user = Table('Users', metadata,
             Column('id', Integer, primary_key=True, nullable=False),
             Column('name', String, index=True),
             Column('password', String),
             Column('created', DateTime, default=datetime.now))

metadata.create_all()  # Create all tables

if __name__ == '__main__':
    print('\nEngine and tables has been \033[32mcreated\033[37m !\n')
