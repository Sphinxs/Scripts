
# -*- coding: utf-8 -*-


from chatterbot import ChatBot

from chatterbot.trainers import ListTrainer


tlk = ['Oi', 'Olá, tudo bem ?', 'Tudo'] # Training dataset

bot = ChatBot('Joi')

bot.set_trainer(ListTrainer)

bot.train(tlk)


if __name__ == '__main__':

    while True:

        user = input('\n\033[32mYou\033[37m : ')

        resp = bot.get_response(user)

        if float(resp.confidence) > 0.5:
            
            print('\n\t\033[31mBot\033[37m : {}'.format(resp))

        else:
            
            print('\n\tSorry, I don\'t understand')

