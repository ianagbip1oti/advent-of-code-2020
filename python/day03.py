import math
import os

with open(os.path.join(os.path.dirname(__file__), "day03.txt")) as f:
    grid = [l.strip() for l in f.readlines()]

def trees(r, d):
    count = 0

    for idx, row in enumerate(grid):
        if idx % d != 0:
            continue
        
        count += row[(idx//d) * r % len(row)] == '#'

    return count

print(trees(3, 1))
print(math.prod(trees(*pth) for pth in ((1,1), (3,1), (5,1), (7,1), (1,2))))

