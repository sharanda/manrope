#!/bin/sh

set -e


echo "Generating font directories"

mkdir -p ./fonts/ttf
mkdir -p ./fonts/variable
echo "Made font directories"


echo "Generating Statics"
fontmake -g source/manrope.glyphs -i --round-instances -o ttf --output-dir ./fonts/ttf/ 
echo "Made Statics"


echo "Generating VFs"
fontmake -g source/manrope.glyphs -o variable --output-dir ./fonts/variable/
echo "Made VF"

cd ./fonts/variable/

echo "autohinting"
ttfautohint Manrope-VF.ttf Manrope-VF-AH.ttf
#add optional arguments here to make sure that all of the hinting necessary is done correctly. Check to make sure base file hinting is set up correctly. 
echo "autohinted"

echo "removing unhinted manrope"
mv Manrope-VF-AH.ttf Manrope-VF.ttf
echo "unhinted manrope removed"

echo "adding dummy dsig"
gftools fix-dsig Manrope-VF.ttf --autofix
echo "dummy dsig added"

echo "fix ppem bit 3"
gftools fix-hinting Manrope-VF.ttf
echo "bit 3 fixed"

echo "fix name"
mv Manrope-VF.ttf.fix Manrope-VF.ttf
mv Manrope-VF.ttf Manrope\[wght\].ttf
cd ..

echo "fixing the statics"

ttfs=$(ls ./ttf/*.ttf)
echo $ttfs
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	gftools fix-nonhinting $ttf "$ttf.fix";
	mv "$ttf.fix" $ttf;
done
echo "fixed nonhinting ttfs as well as DSIG"

echo "removing the backup files"
rm -rf ./ttf/*backup*.ttf
echo "backup files removed"

echo "removing build master and instance build ufos"
cd ..
rm -rf instance_ufo master_ufo
echo "build ufos removed"




echo "Build Complete"
