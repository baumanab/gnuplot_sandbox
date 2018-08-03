#!/bin/sh

# gnuplot script to send ascii plot to terminal
# designed for dummy terminals without access to host 
# or other graphics

# set the terminal
set terminal dumb

# Read comma-delimited data from file
set datafile separator comma

# Set graph title
set title 'Browser popularity: 2009-2015'

# Set label of x-axis
set xlabel 'Year'

# Set label of y-axis
set ylabel '% usage'

# Use a line graph
set style data histogram

# Use clustered histogram (gap size of 1 makes xtics position better)
set style histogram clustered gap 1

# Use a solid fill style for histogram bars
set style fill solid 1 noborder

# Disable the tiny tick lines on the x-axis
set xtics scale 0

# plot the data
plot for [i=2:5] 'usage.csv' using i:xtic(1) title columnheader