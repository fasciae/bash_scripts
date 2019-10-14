#!/usr/bin/env python3
import h5py, argparse, os
parser = argparse.ArgumentParser()
parser.add_argument("--kwe", "-k", help="kwe file from recording")
args = parser.parse_args()
with h5py.File(args.kwe, 'r') as f:
    stimdir = os.path.split(list(f['event_types']['Messages']['events']['user_data']['Text'])[-1][5:])[0].decode('utf-8')
    print(stimdir)


