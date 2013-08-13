#!/bin/sh

# wall-by-keyword: create a wall of books based on a single keyword
#   todo: key phrase
#   also todo: fiction, non-fiction, other special cases
# example: wall-by-keyword.sh knitting > knitting.html ; open knitting.html

curl 'http://www.aadl.org/catalog/search/keyword/'$1'?search_format=a|x|l&perpage=120&sort=catalog_newest&output=rss' | \
grep "hitlist-cover" | \
sed -e 's#<p>##' -e 's#</p>##' -e 's#/catalog#http://www.aadl.org/catalog#' 

