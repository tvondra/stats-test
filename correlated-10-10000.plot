set terminal postscript eps size 12,6 enhanced color font 'Helvetica,20' linewidth 1
set output "correlated-10-10000.eps"
set datafile separator ','

set multiplot layout 1, 2 title "dataset: correlated  values: 10000  statistics target: 10" font ",25"

set title "no statistics" font ",20"
set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set key inside right bottom

plot 'correlated-10-10000.csv' using 5:7 title 'x: master / y: patched' with points pt 7 ps 0.5, \
     'correlated-10-10000.csv' using 6:9 title 'x: patched / y: fixed' with points pt 7 ps 0.5


set title "with statistics" font ",20"
set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set key inside right bottom

plot 'correlated-10-10000.csv' using 6:8 title 'x: master / y: patched' with points pt 7 ps 0.5, \
     'correlated-10-10000.csv' using 7:10 title 'x: patched / y: fixed' with points pt 7 ps 0.5
