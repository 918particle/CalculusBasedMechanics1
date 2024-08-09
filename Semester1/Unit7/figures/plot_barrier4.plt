set xrange [-5:5]
set yrange [-10:10]
set xtics font "Fira,26"
set ytics font "Fira,26"
set xlabel "Displacement, x" font "Fira,26" offset 0,-1
set ylabel "Potential Energy, U(x)" font "Fira,26" offset -2,0
unset key

U(x) = 0.5*k*x*x+A*exp(-0.5*(x/s)*(x/s))
k = 2
A = 3
s = 1
Uprime(x) = -k*x+A/s*(x/s)*exp(-0.5*(x/s)*(x/s))

G(x) = 0.5*k2*x*x+A2*exp(-0.5*(x/s2)*(x/s2))
k2 = 2
A2 = 5
s2 = 0.2
Gprime(x) = -k2*x+A2/s2*(x/s2)*exp(-0.5*(x/s2)*(x/s2))

set terminal postscript enhanced color
set output "Nov14_plot4.eps"

plot U(x) w l lc -1 lw 4 title "k = 2, A = 3, {/Symbol s} = 1", G(x) w l lc rgb "#AAAAAA" lw 4 title "k = 2, A = 5, {/Symbol s} = 0.2", \
Uprime(x) w l lc rgb "#0000FF" lw 4 title "", Gprime(x) w l lc rgb "#FF0000" lw 3 title ""
