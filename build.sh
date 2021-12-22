#!/bin/sh

set -e


echo "Generating Static fonts"

mkdir -p ./gf/
mkdir -p ./gf/static/
echo "Made font directories"
 
echo "Generating Statics"
fontmake -g source/manrope.glyphs -o ttf --round-instances -a --keep-direction -i --output-dir ./gf/static/
fontmake -g source/manrope-italic.glyphs -o ttf --round-instances -a --keep-direction -i --output-dir ./gf/static/
echo "Made Statics"

echo "Generating VFs"
fontmake -g source/manrope.glyphs -o variable --output-path ./gf/Manrope\[wght\].ttf
fontmake -g source/manrope-italic.glyphs -o variable --output-path ./gf/Manrope-Italic\[wght\].ttf
echo "Made VF"

cd ./gf/

echo "adding dummy dsig"
gftools fix-dsig Manrope\[wght\].ttf --autofix
gftools fix-dsig Manrope-italic\[wght\].ttf --autofix
echo "dummy dsig added"

cd ..

echo "Post processing"

vfs=$(ls ./gf/*.ttf)
for vf in $vfs
do
	gftools fix-dsig -f $vf;
	gftools fix-nonhinting $vf "$vf.fix";
	mv "$vf.fix" $vf;
	ttx -f -x "MVAR" $vf; # Drop MVAR. Table has issue in DW
	rtrip=$(basename -s .ttf $vf)
	new_file=./gf/$rtrip.ttx;
	rm $vf;
	ttx $new_file
	rm ./gf/*.ttx
done
rm ./gf/*backup*.ttf

echo "build complete"

