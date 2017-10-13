
#!/usr/bin/env python3

# -*- coding: utf-8 -*-


from flask import Flask


app = Flask(__name__)


@app.route('/')
def say ():
    return 'Test server'


if __name__ == '__main__':
    app.run()
