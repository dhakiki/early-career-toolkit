#!/usr/bin/env bash

grep -rl 'a(href="/")' src/ | xargs sed -i '' 's/a(href="\/")/a(href="\/early-career-toolkit\/")/g'
rm -rf src/content/
rm src/index.md
