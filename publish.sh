#!/bin/bash

gs=$(git status --porcelain)

commit=$(git rev-parse --short HEAD)

hugo -d ../one-daily-snippet-public

cd ../one-daily-snippet-public

git add -A .
git commit -F- <<EOF
Publish $commit

$gs
EOF

git push
