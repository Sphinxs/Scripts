
#!/usr/bin/env python3

# coding: utf8

import os

import random

import string

def generateFiles(quantity: int = 1001, size_files: int = 100000) -> None:
    '''
        Generate files with random bytes and names, but with a specific size and header
    '''

    for counter in range(1, quantity):
        with open("".join(str(counter) + "".join([random.choice(string.digits) for i in range(8)])), "wb") as f:
            # [f.write(b_part) for b_part in map(bin, bytearray("Header".encode("utf8")))]

            f.write(b"Header")

            f.write(os.urandom(size_files))


if __name__ == "__main__":
    while True:
        print("\n\033[31mGenerate\033[37m")
        
        c_quantity = int(input("\nQuantity of files \033[34m:\033[37m "))

        c_size_files = int(input("\nSize of each file \033[34m:\033[37m "))

        generateFiles(c_quantity, c_size_files)

        mode = str(input(
            "\nType \033[34mon\033[37m to generate more files or \033[31moff\033[37m to finish \033[34m:\033[37m "))

        print("\n" * 25)

        if(mode == "off"):
            break