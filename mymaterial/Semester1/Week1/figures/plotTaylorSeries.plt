unset key
set grid
set yrange [-2:2]
set xrange [-2:2]
set xlabel "X" font "Courier,20"
set ylabel "Y" font "Courier,20"
set xtics font "Courier,20"
set ytics font "Courier,20"
set linestyle 1 lw 3 lc -1
set linestyle 2 lw 3 lc 1
set label 1 "Black: sin(x) and (1+x)^{1/2}" at -0.5,-1.2 font "Courier,16"
set label 2 "Red: x and 1+(1/2)x" at -0.5,-1.4 font "Courier,16"
set terminal png
set output "taylor_series.png"

plot sin(x) ls 1, x ls 2, (1+x)**0.5 ls 1, 1+0.5*x ls 2
