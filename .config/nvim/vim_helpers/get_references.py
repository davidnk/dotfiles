#! /usr/bin/python

import re
import subprocess
import sys

def filename(s):
    return s[:s.find(':')]

def split_after_linenumber(s):
    return s[:s.find(':')], s[s.find(':')+1:]

word = sys.argv[1]
print word
print '-' * 80
try:
    lines = subprocess.check_output(['ack-grep', '{}'.format(word)]).split('\n')
    lines = [l for l in lines if re.search('[^\w]{}[^\w]'.format(word), l)]

    file_map = {filename(l): [] for l in lines}
    for l in lines:
        file_map[filename(l)].append(l.replace(filename(l) + ':', ''))

    for k, v in file_map.items():
        print k # file
        for l in v:
            num, line = split_after_linenumber(l)
            print "\t" + k + ":" + num + '\n\t\t' + line.strip() # context
        print
except:
    pass
