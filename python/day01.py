import itertools
import os

with open(os.path.join(os.path.dirname(__file__), "day01.txt")) as f:
    report = [int(l) for l in f.readlines()]

def run(n):
    ns = next(rs for rs in itertools.combinations(report, n) if sum(rs) == 2020)

    product = 1
    for n in ns:
        product *= n

    return product

print(run(2))
print(run(3))

