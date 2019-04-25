# Gnuplot histogram generation script
# Gregory Kuhlmann, 2002

# Color output
set terminal postscript eps color solid "Helvetica" 24

# Black & White output
#set terminal postscript eps monochrome dashed "Helvetica" 24

# Output file
set output "./hold_histogram.eps"

# Title
set title "Always Hold Policy Histogram"

# Appearance
set style data steps
#set nokey
set border 3
set xtics nomirror
set ytics nomirror
set multiplot

# Axes
set xrange [0.0:15]
set xlabel "Episode Duration (seconds)"

set yrange [0:450]
set ylabel "Occurences"

# Plot Data
plot "./hold_histogram.out" title 'Always Hold'

