set terminal postscript eps enhanced  color font 'Helvetica,30' fontscale 1.0 
set output "Mutant_50Pep_Oligo_ALK3_ALK3E4.ps"

#set terminal pngcairo transparent enhanced color font 'Helvetica,20' fontscale 1.0
#set output "Mutant_50Pep_Oligo_ALK3_ALK3E4.png"


set border lw 3 
#front lt black linewidth 1.000 dashtype solid
set boxwidth 0.95 absolute
set style fill   solid 1.00 border lt -1
set errorbars linecolor black
set style line 2 lc rgb 'black' lt 1 lw 5

set tics scale 2
set key  right top vertical Left reverse noenhanced autotitle columnhead nobox
set key invert samplen 4 spacing 1 width 0 height 0 

set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 
set xtics  norangelimit 
set xtics ()
unset key

set yrange[0:8]
set ytics offset 0.3, 0
set ylabel "Largest Cluster Size" offset 1.7,0
set yrange [ 0.0 : * ] noreverse writeback
set ytics mirror
set mytics 2

set xtics font "Helvatica, 28" 
set xtics mirror
#set xtics center offset 0,0.5,0.2
set xtics right offset 0,-0.1,0.8
#set xtics rotate by 45

set bars fullwidth 2
p 'Mutant_50Pep_Oligo1.dat' u 2:xtic(1) lc rgb "#F109F6", '' u 2:3 w yerrorbars lt 1 lw 10 lc rgb "black"
