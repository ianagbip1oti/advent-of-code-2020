import math
import itertools

with open("inputs/day01.txt") as f:
    report = [int(l) for l in f.readlines()]

def run(n):
    return next(math.prod(rs) for rs in itertools.combinations(report, n) if sum(rs) == 2020)

print(run(2))
print(run(3))

