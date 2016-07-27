+++
Categories = ["git"]
Description = ""
date = "2016-07-28T00:21:03+02:00"
title = "git prepare commit msg"

+++

```sh
#!/bin/sh

BRANCH_NAME=$(git symbolic-ref --short HEAD)

if [[ $BRANCH_NAME != bug-* ]] && [[ $BRANCH_NAME != feature-* ]]; then
    exit 0
fi

FIRST_LINE_COMMIT=$(head -n1 $1)

case $FIRST_LINE_COMMIT in
bug*|Bug*|feature*|Feature*)
    exit 0
    ;;
esac

LABEL=$(echo $BRANCH_NAME|sed 's/-/ #/')
LABEL=${LABEL^}

sed -i -e "1s/^/${LABEL}: /" $1
```
