#!/bin/bash

# 
# Ensure that the ImageMagick commands we need are available.
#
if [ -z "$(command -v identify)" ]; then
  echo "ERROR: Can't find the 'identify' command. Is ImageMagick installed?"
  exit
fi

if [ -z "$(command -v montage)" ]; then
  echo "ERROR: Can't find the 'montage' command. Is ImageMagick installed?"
  exit
fi

#
# The files are passed as a single tab deliminated argument
# Turn that into an array of individual files.
#
oIFS="$IFS"
IFS=$'\t'
files=($1)
IFS="$oIFS"

#
# Find the total width of all images.
#
total_width=0
for i in "${files[@]}"
do
  width=$(identify -format %w "$i")
  total_width=$(($total_width + $width))
done

# 
# If the total width is greater than 1000 px
# then tile the images vertically. Otherwise
# tile them horizontally.
#
if [ $total_width -gt 1000 ]; then
  tile="1x${#files[@]}"
else
  tile="${#files[@]}x1"
fi

# 
# Generate the montaged image.
#
output="montage-$$.png"
montage -label %t -geometry +10+10 -tile $tile "${files[@]}" $HOME/Desktop/$output

#
# Let the user know about it.
#
echo "$output has been created and placed on your Desktop."
