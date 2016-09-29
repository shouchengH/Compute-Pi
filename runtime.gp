reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'


plot 'output.txt' using 1:2 with lines title 'baseline', \
'' using 1:3 with lines title 'openmp2', \
'' using 1:4 with lines title 'openmp4', \
'' using 1:5 with lines title 'avx' , \
'' using 1:6 with lines title 'avx_unroll'
