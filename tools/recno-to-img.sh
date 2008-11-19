#!/bin/sh

# recno to img - convert aadl record numbers to image links
curl --silent http://www.aadl.org/rest/record/$1 |
grep coverimglink |
sed -e 's/^.*xlink:href=.//' -e 's/\".*$//'
