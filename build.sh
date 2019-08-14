#!/bin/sh

set -e


echo "Generating font directories"

mkdir -p ./test/ttf
mkdir -p ./test/variable
echo "Made font directories"


echo "Generating Statics"
fontmake -g source/manrope.glyphs -i --round-instances -o ttf --output-dir ./test/ttf/ 
echo "Made Statics"


echo "Generating VFs"
fontmake -g source/manrope.glyphs -o variable --output-dir ./test/variable/ 
echo "Made VF"

cd ./test/variable/

echo "autohinting"
ttfautohint Manrope-VF.ttf Manrope-VF-AH.ttf
#add optional arguments here to make sure that all of the hinting necessary is done correctly. Check to make sure base file hinting is set up correctly. 
echo "autohinted"

echo "removing unhinted manrope"
rm -rf Manrope-VF.ttf
echo "unhinted manrope removed"

echo "adding dummy dsig"
gftools fix-dsig Manrope-VF-AH.ttf --autofix
echo "dummy dsig added"


echo "fix ppem bit 3"
gftools fix-hinting Manrope-VF-AH.ttf
echo "bit 3 fixed"

echo "rename fixed ttf.fix to ttf"
mv Manrope-VF-AH.ttf.fix Manrope-VF-AH.ttf

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


echo "Build Complete  *NUCLEAR LAUNCH DETECTED* *zerglings neutralized*"