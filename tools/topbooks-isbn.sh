#!/bin/sh
curl -s http://www.aadl.org/feeds'?'type=topitems'&'mat=a'&'disp=100 | 
grep  isbn= | 
sed -e 's/^.*isbn=//' -e 's/+A.SC.*$//'
