
for d in random correlated; do

	for t in 10 100 1000 10000; do

		for v in 10 100 1000 10000; do

			sed "s/DATASET/$d/" export.sql | sed "s/TARGET/$t/" | sed "s/VALUES/$v/" | psql -A -F "\t" test > $d-$t-$v.csv

			sed "s/FILE/$d-$t-$v/g" plot.template | sed "s/DATASET/$d/" | sed "s/TARGET/$t/" | sed "s/VALUES/$v/" > $d-$t-$v.plot

			gnuplot $d-$t-$v.plot

		done

	done

done