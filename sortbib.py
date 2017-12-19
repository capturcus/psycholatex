#!/usr/bin/python

with open("bib.txt") as f:
    lines = f.read()

COMMAND = "\\apaartykul{"
COM_LEN = len(COMMAND)

stripped_lines = []

for line in lines.split("\n"):
    if line != "":
        stripped_lines.append(line[COM_LEN:].lstrip().rstrip())

for line in sorted(stripped_lines):
    print COMMAND+line+"\n"