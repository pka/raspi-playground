#!/bin/bash

PNG=/tmp/temp_graph.png
RRDDIR=/var/lib/collectd/rrd/pizol/multilogger

echo Generating $PNG
rrdtool graph $PNG \
-w 785 -h 120 -a PNG \
--slope-mode \
--start -604800 --end now \
--lower-limit 15 --upper-limit 25 --rigid \
--vertical-label "temperature (°C)" \
DEF:temp1=$RRDDIR/gauge-9531.rrd:value:MAX \
DEF:temp2=$RRDDIR/gauge-9784.rrd:value:MAX \
LINE1:temp1#ff0000:"temp 1" \
LINE1:temp2#0000ff:"temp 2"
