set term svg size 1600,2400
set output "correlated-1000-10.svg"

# set terminal png truecolor size 1600,800
# set output "correlated-1000-10.png"

set datafile separator ','

set multiplot layout 3, 2 title "dataset: correlated  values: 10  statistics target: 1000" font ",18"

################

set title "master/patched (no stats)" font ",15"

set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set xlabel "master"
set ylabel "patched"

set key inside right bottom

plot 'correlated-1000-10.csv' using 5:6 title 'x: master / y: patched' with points pt 7 ps 0.5 lc rgb "#ddcc0000"


set title "master/patched (with stats)" font ",15"

set logscale xy

set style fill transparent solid 0.1 noborder
set style circle radius 0.02

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set xlabel "master"
set ylabel "patched"

set key inside right bottom

plot 'correlated-1000-10.csv' using 8:9 title 'x: master / y: patched' with points pt 7 ps 0.5 lc rgb "#ddcc0000"


################

set title "patched/fixed (no stats)" font ",15"

set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set xlabel "patched"
set ylabel "fixed"

set key inside right bottom

plot 'correlated-1000-10.csv' using 6:7 title 'x: patched / y: fixed' with points pt 7 ps 0.5 lc rgb "#dd0000aa"


set title "patched/fixed (with stats)" font ",15"

set logscale xy

set style fill transparent solid 0.1 noborder
set style circle radius 0.02

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set xlabel "patched"
set ylabel "fixed"

set key inside right bottom

plot 'correlated-1000-10.csv' using 9:10 title 'x: patched / y: fixed' with points pt 7 ps 0.5 lc rgb "#dd0000aa"

###################

set title "master/fixed (no stats)" font ",15"

set logscale xy

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set xlabel "master"
set ylabel "fixed"

set key inside right bottom

plot 'correlated-1000-10.csv' using 5:7 title 'x: master / y: fixed' with points pt 7 ps 0.5 lc rgb "#dd008800"


set title "master/fixed (with stats)" font ",15"

set logscale xy

set style fill transparent solid 0.1 noborder
set style circle radius 0.02

set xrange [0.01:1000000]
set yrange [0.01:1000000]

set xlabel "master"
set ylabel "fixed"

set key inside right bottom

plot 'correlated-1000-10.csv' using 8:10 title 'x: master / y: fixed' with points pt 7 ps 0.5 lc rgb "#dd008800"
