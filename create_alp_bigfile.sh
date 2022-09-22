#!/usr/bin/bash

DAPS_CMD="/home/tbazant/devel/daps/bin/daps --dapsroot /home/tbazant/devel/daps/"
$DAPS_CMD --builddir /tmp -d orig-DC-assembly-alp bigfile
cp /tmp/.tmp/orig-DC-assembly-alp_bigfile.xml xml/alp.xml

exit 0
