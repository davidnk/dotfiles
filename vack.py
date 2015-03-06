#! /usr/bin/python

import re
import subprocess
import sys

def filename(s):
    return s[:s.find(':')]

def split_after_linenumber(s):
    return s[:s.find(':')], s[s.find(':')+1:]

for word in sys.argv[1:]:
    print word
    print '-' * 80
    try:
        lines = subprocess.check_output(['ack-grep', '-i', '{}'.format(word)]).split('\n')
        lines = [l for l in lines if re.search('[^\w]{}([^\w]|$)'.format(word), l.lower() if word == word.lower() else l)]

        file_map = {filename(l): [] for l in lines}
        for l in lines:
            file_map[filename(l)].append(l.replace(filename(l) + ':', ''))

        for k, v in file_map.items():
            print k # file
            for l in v:
                num, line = split_after_linenumber(l)
                print "\t" + (num + ':').ljust(6) + line.strip() # context
            print
    except:
        pass
    print '-' * 80
    print '\n'
