#!/bin/sh
. "$(dirname "$0")/_/husky.sh"

current_branch=$(git rev-parse --abbrev-ref HEAD)
prepend=$(.husky/commit-msg-get-start.sh $current_branch)

cat .git/COMMIT_EDITMSG | grep -v "^#" | sed "1s;^;$prepend;" > tempPrepend
mv tempPrepend .git/COMMIT_EDITMSG
