#!/usr/bin/env bash

mkdir src/content
cp -f README.md src/index.md
cp -Rf content/ src/content/
grep -rl '.md' src/ | xargs sed -i '' 's/.md//g'
#grep -rl '/early-career-toolkit/' src/ | xargs sed -i '' 's/early-career-toolkit\///g'
grep -rl 'CONTRIBUTING' src/ | xargs sed -i '' 's/CONTRIBUTING/CONTRIBUTING.md/g'
$(npm bin)/harp server src
