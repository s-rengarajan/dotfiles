#!/usr/bin/python
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("message")
parser.add_argument("-extra",dest="extra", default="TT")

args = parser.parse_args()
print(args)
print(args.message, args.extra)
