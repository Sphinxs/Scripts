
# coding: utf-8


from sys import argv

from PIL import Image


img = Image.open(argv[1])

img.convert('1').save('Image','PNG')
