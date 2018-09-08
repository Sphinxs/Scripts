
triangle = lambda symbol: lambda size: list(map(lambda i: print(str.center(i * symbol, size)), range(1, size + 1)))

print(triangle('*')(5))
