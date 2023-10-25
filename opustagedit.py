#!/home/srengarajan/Documents/Metadata_Extensions/code/python/env/bin/python3

import mutagen
import subprocess
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("filename")
parser.add_argument("--tag", "-t", required=True)
parser.add_argument("--replacement", "-r", required=True)

args = parser.parse_args()


file = subprocess.run(["readlink", "-f", str(args.filename)] , stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
file = str(file.stdout).replace("\n", "").replace(r"'", "")
file = mutagen.File(file)
file.tags[args.tag] = args.replacement
file.save()
