#! /usr/bin/python

import sys
import re
import os


def file_names_with_caching(file_match, cache_dir):
    if not os.path.isdir(cache_dir):
        os.mkdir(cache_dir)
    file_match_file = os.path.join(cache_dir, str(hash(file_match)))
    if not os.path.isfile(file_match_file):
        os.system('find `pwd` ! -name \'*.jar\' ! -name \'*.class\' -type f | grep -i "' + file_match + '" > ' + file_match_file)
    with open(file_match_file) as f:
        fnames = [fname.strip() for fname in f if fname.startswith(os.getcwd()) and os.path.isfile(fname.strip())]
    return fnames


def main(file_match, line_match, cache_dir='/tmp/a'):
    pat = re.compile(line_match)
    for fname in file_names_with_caching(file_match, cache_dir):
        with open(fname) as f:
            lines = [(n, l.strip()) for n,l in enumerate(f) if pat.search(l.lower() if line_match.islower() else l)]
            if lines:
                print(fname)
                for n,l in lines:
                    print '\t', n, ':', l
                print


if __name__ == '__main__':
    print ' '.join(sys.argv)
    print '-' * 80
    print
    file_match = sys.argv[1]# + '.*\.java$'
    line_match = sys.argv[2]
    main(file_match, line_match)
