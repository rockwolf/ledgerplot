####################################################################################
# Gnuplot 4.6 script for plotting the cashflow.
####################################################################################

### plot setup
set terminal pngcairo size 800,600 enhanced font 'Liberation Mono,10' background "#002b36"
set output 'cashflow.png'
COLORS = "#dc322f #859900"
set border 3 front linetype -1 linewidth 1.000 linecolor rgb "#839496"

### titles and labels
set title "Cashflow" textcolor rgb "#839496"
set ylabel "Accumulative Income and Expenses"

### axis/grid
set xdata time
set timefmt "%Y-%m-%d"
set xrange ["$(date --date='last year'+%Y)-12-20":"$(date +%Y)-12-10"]
set xtics nomirror "$(date +%Y)-01-01",2592000 format "%b"
unset mxtics
set mytics 2
set grid xtics ytics mytics

# layout
set style fill transparent solid 0.6 noborder

## legend
set key bmargin center horizontal Left reverse noenhanced autotitles columnhead nobox textcolor rgb "#839496"

# TODO: add plot command in C? But no data is generated here, so you can just leave it here...
# TODO: what needs to be changed for the plot command to work in the same way as income_vs_expenses?
#plot "ledgeroutput1.tmp" using 1:2 with filledcurves x1 title "Income" linecolor rgb "light-salmon", '' using 1:2:2 with labels font "Courier,8" offset 0,0.5 textcolor linestyle 0 notitle, "ledgeroutput2.tmp" using 1:2 with filledcurves y1=0 title "Expenses" linecolor rgb "seagreen", '' using 1:2:2 with labels font "Courier,8" offset 0,0.5 textcolor linestyle 0 notitle
EOF
