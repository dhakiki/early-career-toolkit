#!/bin/bash

cd ../
mkdir ../ectk-compiled
cp README.md website/
cp topics/* website/topics/
cd website/
mv README.md index.md
harp compile
mv www/* ../../ectk-compiled
rm -rf www/
rm index.md
cd topics/
rm -rf *
cd ../../
git checkout gh-pages
rm -rf *
mv ../ectk-compiled/* *
git add -A
git commit -m "web version update"
git push origin gh-pages
