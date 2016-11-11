#! /usr/bin/python
import sys
import re
import os

keys_re = re.compile('^,[a-zA-Z0-9_./]+$')
def is_key(arg):
    return keys_re.match(arg) is not None


filter_re = re.compile('^/.*$')
def is_filter(arg):
    return filter_re.match(arg) is not None


not_filter_re = re.compile('^~.*$')
def is_not_filter(arg):
    return not_filter_re.match(arg) is not None


def get_keys_filters_nots_output(args):
    input_args, output = args[:-1], (args[-1] if args else '')
    keys = [a[1:] for a in input_args if is_key(a)]
    filters = [a[1:] for a in input_args if is_filter(a)]
    nots = [a[1:] for a in input_args if is_not_filter(a)]
    return keys, filters, nots, output


def new_key(fnames, output, cache_dir='/tmp/a'):
    with open(os.path.join(cache_dir, output), 'w') as f:
        for fname in sorted(fnames):
            f.write(fname + '\n')


def filter_files(keys, filters, nots, cache_dir='/tmp/a'):
    def get_cached_files(key):
        with open(os.path.join(cache_dir, key)) as f:
            return set(fname.strip() for fname in f.readlines() if os.path.isfile(fname.strip()))
    if not os.path.isdir(cache_dir):
        os.mkdir(cache_dir)
    files = set()
    if not keys:
        temp_key = 'TEMP_CURRENT'
        cached_file = os.path.join(cache_dir, temp_key)
        os.system("find `pwd` ! -name '*.jar' ! -name '*.class' -type f > " + cached_file)
        keys.append(temp_key)
    files = get_cached_files(keys[0])
    for key in keys[1:]:
        files.intersection_update(get_cached_files(key))
    for filter_ in filters:
        files = filter(re.compile(filter_, re.IGNORECASE).search, files)
    for not_f in nots:
        not_re = re.compile(not_f, re.IGNORECASE)
        files = filter(lambda fname: not not_re.search(fname), files)
    return files


def filter_lines(fnames, line_filter):
    line_re = re.compile(line_filter)
    for fname in fnames:
        with open(fname) as f:
            lines = [(n, l.strip()) for n,l in enumerate(f) if line_re.search(l.lower() if line_filter.islower() else l)]
            if lines:
                print(fname)
                for n,l in lines:
                    print '\t', n, ':', l
                print


help_message = """\
FILTER:      (/.+)
NOT_FILTER:  (~.+)
FILTER_KEY:  (,[a-zA-Z0-9_.]+)
FILTERS:     (FILTER_KEY|FILTER|NOT_FILTER)*
LIST_FILES:  (\.)
OUTPUT:      (FILTER_KEY|LINE_MATCH|LIST_FILES)
gfl FILTERS OUTPUT
FILTERS filter filenames via regex or by cached file lists.  If no FILTER_KEY is given it will start with the files under the current directory.
If OUTPUT is a FILTER_KEY the file list is cached under that name.
If OUTPUT is a FILTER the files are grepped for the FILTER.
If OUTPUT is '.' the list of files is printed.
"""


def main(keys, filters, nots, output):
    if output == '.':
        print '\n'.join(filter_files(keys, filters, nots))
        return
    if not is_key(output) and not is_filter(output):
        sys.exit(help_message)
    fnames = filter_files(keys, filters, nots)
    if is_key(output):
        new_key(fnames, output[1:])
        print '\n'.join(fnames)
    else:
        filter_lines(fnames, output[1:])


if __name__ == '__main__':
    print ' '.join(sys.argv)
    print '-' * 80
    print
    if len(sys.argv) <= 1:
        sys.exit(help_message)
    keys, filters, nots, output = get_keys_filters_nots_output(sys.argv[1:])
    main(keys, filters, nots, output)

