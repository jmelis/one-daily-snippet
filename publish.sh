#!/bin/bash

gs=$(git status --porcelain)

commit=$(git rev-parse --short HEAD)

hugo -d ../gh-pages

cd ../gh-pages

git add -A .
git commit -F- <<EOF
Publish $commit

$gs
EOF

git push
