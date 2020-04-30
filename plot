#!/usr/bin/env python3

import sys
import matplotlib.pyplot as plt
import pandas as pd

if len(sys.argv) == 3:
    local_file = sys.argv[1]
    adhd200_file = None
    out_file = sys.argv[2]
else:
    local_file = sys.argv[1]
    adhd200_file = sys.argv[2]
    out_file = sys.argv[3]

if not adhd200_file:
    data = pd.read_csv(local_file, header=None)
    plt.plot(data[12], data[5], 'k.')
else:
    data1 = pd.read_csv(local_file, header=None)
    plt.plot(data1[12], data1[5], 'b.', label='Local data')
    data2 = pd.read_csv('adhd200_age_hippo.csv', header=None)
    plt.plot(data2[12], data2[5], 'r.', label='ADHD-200 data')
    plt.legend()

plt.title('Hippocampus volume vs age')
plt.xlabel('Age (years)')
plt.ylabel('Volume (mm$^3$)')
plt.savefig(out_file)

sys.exit(0)

# eof
