#!/usr/bin/env python3
import sys
import subprocess
from subprocess import PIPE
import argparse


def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("echo", help="echo the string you use here")
    args = parser.parse_args()
    return args

def main():
    """
    proc = subprocess.run("date", shell=True, stdout=PIPE, stderr=PIPE, text=True)
    date = proc.stdout
    print('STDOUT: {}'.format(date))
    """
    proc = subprocess.run('uname', shell=True, stdout=PIPE, stderr=PIPE, text=True)
    print(proc.stdout)


if(__name__=="__main__"):
    print(sys.version)
    main()