# Gnuplot graph generation script
# Gregory Kuhlmann, 2002

# Color output
set terminal postscript eps color solid "Helvetica" 24

# Black & White output
#set terminal postscript eps monochrome dashed "Helvetica" 24

# Output file
set output "./rl_graph.eps"

# Title
set title "RL Episode Length Graph"

# Appearance
set style data lines
#set nokey
set key on bmargin horizontal
set border 3
set xtics nomirror
set ytics nomirror
set multiplot

# Axes
set xrange [-0.5:12]
set xlabel "Training Time (hours)"

set yrange [2.0:14.0]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot "./rl_run1.out" title "Run 1", \
	"./rl_run2.out" title "Run 2", \
	"./rl_run3.out" title "Run 3", \
	"./rl_run4.out" title "Run 4", \
	"./rl_run5.out" title "Run 5", \
	5.69 title "Random", \
	3.61 title "Always Hold", \
	9.0 title "Hand-Coded"

