# Transform binary fraction to decimal fraction: .1010 in binary
# to .625 in decimal. The entire part it's calculated separated

from sys import argv

import numpy

binaries = [float(binary) for binary in list(argv[1])]

result = 0.0

for indice, binary in enumerate(binaries, start=1):
    if binary == 0:
        continue;
    
    result += 1 / (2 ** indice)

print(f'The fraction {argv[1]} in binary converted to decimal {result}')