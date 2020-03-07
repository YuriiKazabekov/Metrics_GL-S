#!/usr/bin/python3

import sys
import psutil

param = sys.argv[1:]
def metrics(param):

    if param == ['cpu']:
        result = psutil.cpu_times()._asdict()
        for keys,values in result.items():
            print('system.cpu.'+keys,values)
    elif param == ['mem']:
        result = psutil.virtual_memory()._asdict()
        for keys,values in result.items():
            print('virtual '+keys,values)
        psutil.swap_memory()._asdict()
        for keys,values in result.items():
            print('swap '+keys,values)
    else:
        print('Enter the parameter cpu or mem')

metrics(param)
