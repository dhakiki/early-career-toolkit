#!/bin/bash

ls
mkdir ectk-compiled
cp README.md website/
cp topics/* website/topics/
cd website/
mv README.md index.md
npm install harp
harp compile
mv www/* ../../ectk-compiled
rm -rf www/
rm index.md
cd topics/
rm -rf *
cd ../../
git checkout gh-pages
rm -rf *
mv ectk-compiled/* *
rm -rf ectk-compiled/
git init
git config user.name 'Circle CI'
git config user.email 'doreen.hakimi@gmail.com'
git add -A
git commit -m "Deploy to Github Pages"
git push -f "https://${GITHUB_AUTH_TOKEN}@github.com/dhakiki/early-career-toolkit.git" gh-pages
