#!/usr/bin/bash
cat xml/ALP.asm.xml | grep 'resource xml' | awk -F\" '{print "xml/"$4}'
