set terminal postscript eps size 12,6 enhanced color font 'Helvetica,20' linewidth 1
set output "random-1000-100.eps"
set datafile separator ','

set multiplot layout 1, 2 title "dataset: random  values: 100  statistics target: 1000" font ",25"

set title "no statistics" font ",20"
set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set key inside right bottom

plot 'random-1000-100.csv' using 5:7 title 'x: master / y: patched' with points pt 7 ps 0.5, \
     'random-1000-100.csv' using 6:9 title 'x: patched / y: fixed' with points pt 7 ps 0.5


set title "with statistics" font ",20"
set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set key inside right bottom

plot 'random-1000-100.csv' using 6:8 title 'x: master / y: patched' with points pt 7 ps 0.5, \
     'random-1000-100.csv' using 7:10 title 'x: patched / y: fixed' with points pt 7 ps 0.5
