
#!/usr/bin/env python3

# coding: utf-8


import simplemail


def send(to, subject, message):
	
	simplemail.Email(
		smtp_server = "smtp.gmail.com:587",
		smtp_user = "mail@gmail.com",
		use_tls = True,
		smtp_password = "password",
		from_address = "mail@gmail.com",
		to_address = to,
		subject = subject,
		message = message
	).send()


send('test@gmail.com', u'theme', u'content')
