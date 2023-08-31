from collections import defaultdict
from rich import print
import os
import numpy as np

# letter 1.60466
# covtype 146.284
# epsilon 3070.07
# gisette 114.718
# msd 180.434
# radar 231.193
# realsim 5784.3
results = defaultdict(lambda: {'rx': [], 'tx': []})
datasets_size_mb_pkl = {
    'letter': 1.60466,
    'covtype': 146.284,
    'epsilon': 3070.07,
    'gisette': 114.718,
    'msd': 180.434,
    'radar': 231.193,
    'realsim': 5784.3
}
# fedtree using csv, the file is larget than libsvm
datasets_size_mb_csv = {
    'letter': 5.21247/4,
    'covtype': 231.404/4,
    'epsilon': 16267.3/4,
    'gisette': 194.383/4,
    'msd': 816.174/4,
    'radar': 1021.5/4,
    'realsim': 5841/4
}
UNIT = 1/1024/1024 # MB

def foo(folder):
    os.chdir(folder)
    rx_begins = []
    rx_ends = []

    tx_begins = []
    tx_ends = []

    algo = folder.split('_')[0]
    ds   = folder.split('_')[1]
    algo = algo.lower()
    ds   = ds.lower()

    for i in range(4):
        with open(f"begin{i}.txt", "r") as f:
            begin_lines = f.readlines()
            for line in begin_lines:
                if 'bytes' in line:
                    line = line.strip()
                    if "RX" in line:
                        rx_begins.append(line.split('bytes ')[1].split(' ')[0])
                    else:
                        tx_begins.append(line.split('bytes ')[1].split(' ')[0])
        
        with open(f"end{i}.txt", "r") as f:
            end_lines = f.readlines()
            for line in end_lines:
                if 'bytes' in line:
                    line = line.strip()
                    if "RX" in line:
                        rx_ends.append(line.split('bytes ')[1].split(' ')[0])
                    else:
                        tx_ends.append(line.split('bytes ')[1].split(' ')[0])
    
    if algo == "measure":
        for i in range(len(rx_ends)):
            rx = (int(rx_ends[i]) - int(rx_begins[i]))/1024
            tx = (int(tx_ends[i]) - int(tx_begins[i]))/1024
            print(f"Measure Party {i} RX: {rx:.2f} KB")
            print(f"Measure Party {i} TX: {tx:.2f} KB")
        print('')
        return
    else:
        ds_size = datasets_size_mb_csv[ds] if algo == "fedtree" else datasets_size_mb_pkl[ds]
    
    if algo == "cvfl":
        rx = f"{(int(rx_ends[0]) - int(rx_begins[0]))*UNIT - ds_size:.2f}"
    else:
        rx = f"{(int(rx_ends[0]) - int(rx_begins[0]))*UNIT - ds_size:.2f}"
    
    tx = f"{(int(tx_ends[0]) - int(tx_begins[0]))*UNIT:.2f}"

    # print('"%s_%s": {"rx":%s, "tx":%s},' % (ds, algo, rx, tx))
    results[f"{ds}_{algo}"]['rx'].append(float(rx))
    results[f"{ds}_{algo}"]['tx'].append(float(tx))
    # print(f"    party0 Total {((int(tx_ends[i]) - int(tx_begins[i])) + (int(rx_ends[i]) - int(rx_begins[i])))*UNIT:.2f}MB")
    # calculate avg rx and tx
    
    # print(algo, ds)
    rx_sum = 0
    tx_sum = 0
    for i in range(len(rx_begins)):
        rx_sum += (int(rx_ends[i]) - int(rx_begins[i]))
        tx_sum += (int(tx_ends[i]) - int(tx_begins[i]))
        # print("Party %d RX: %.2f MB" % (i, (int(rx_ends[i]) - int(rx_begins[i]))*UNIT))
        # print("Party %d TX: %.2f MB\n" % (i, (int(tx_ends[i]) - int(tx_begins[i]))*UNIT))
        
    # print(f"RX avg: {rx_sum*UNIT/len(rx_begins) - datasets_size_mb[ds]:.2f} MB")
    # print(f"TX avg: {tx_sum*UNIT/len(tx_begins):.2f} MB")
    
    os.chdir('..')


folders = os.listdir('.')
folders = sorted(folders)
for folder in folders:
    if "proc" in folder:
        continue
    try:
        os.chdir(os.path.abspath(__file__)[:-7])
        foo(folder)
    except Exception as e:
        # print(e)
        continue

print("{")
keys = sorted(list(results.keys()))
for k in keys:
    
    # print(f"[bold cyan]{k}[/bold cyan]")
    rx_mean = np.mean(results[k]['rx'])
    rx_std  = np.std(results[k]['rx'])
    tx_mean = np.mean(results[k]['tx'])
    tx_std  = np.std(results[k]['tx'])
    # print(f"    [bold magenta]rx:[bold magenta] {rx_mean:.2f} ± {rx_std:.2f} MB ()")
    # print(f"    [bold magenta]tx:[bold magenta] {tx_mean:.2f} ± {tx_std:.2f} MB ()")

    print('"%s": {"rx_mean": %.2f, "tx_mean": %.2f, "rx_std": %.2f, "tx_std": %.2f},' % (k, rx_mean, tx_mean, rx_std, tx_std))
print("}")