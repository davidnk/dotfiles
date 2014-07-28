#!/bin/sh
find . -name '*.java' | grep -iv test > cscope.files

# -b: just build
# -q: create inverted index
cscope -b -q
