#!/bin/sh
# an attempt at a script to batch convert a directory with 
# subdirectories of images.
# requires imagemagick

# does user have image magick?  if no, say so.

# take the directory in question as an argument

# get full path of directory

DIR= /full/path/of/dir

# take input and output format info

IN = inputFormat
OUT = outputFormat

# ask if you'd like to keep originals

# if yes,

# ask "in a tarball?"

# if yes make tarball in current working directory

# if no
	# cp -r $DIR to $DIR.orgformat/

 find $DIR -name "$IN" -exec mogrify -format $OUT {} \;
 find $DIR art -name "$IN" -delete

# else

 find $DIR -name "*$IN" -exec mogrify -format $OUT {} \;
 find $DIR art -name "*$IN" -delete 

