set terminal dumb
set xrange [-2:52]
set yrange [0:0.12]
set format y '%.0s'
plot 'battery.dat' using 1:2:4 with yerrorbars linestyle 1, \
     ''                        with lines linestyle 1
