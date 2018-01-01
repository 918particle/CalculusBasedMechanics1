set xrange [-5:5]
set yrange [0:10]
set xtics font "Fira,26"
set ytics font "Fira,26"
set xlabel "Displacement, x" font "Fira,26" offset 0,-1
set ylabel "Potential Energy, U(x)" font "Fira,26" offset -2,0
set key top center box on font "Fira,20"
set object circle at 2.5,6.25 radius 0.125 fillcolor "black" fillstyle solid
set object circle at 2,4 radius 0.125 fillcolor "red" fillstyle solid
set object circle at 2.236,4.9 radius 0.125 fillcolor "blue" fillstyle solid

U(x) = 0.5*k*x*x+A*exp(-0.5*(x/s)*(x/s))
k = 2
A = 3
s = 1

G(x) = 0.5*k2*x*x+A2*exp(-0.5*(x/s2)*(x/s2))
k2 = 2
A2 = 5
s2 = 0.2

set terminal postscript enhanced color
set output "Nov14_plot1.eps"

plot U(x) w l lc -1 lw 4 title "k = 2, A = 3, {/Symbol s} = 1", G(x) w l lc rgb "#AAAAAA" lw 4 title "k = 2, A = 5, {/Symbol s} = 0.2"
