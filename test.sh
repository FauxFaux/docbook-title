#!/bin/zsh

for i in {1..50}; do
    if ./go.sh 2>&1 | fgrep 'Request for title of element with no title:'; then
        echo "broke at step $i"
        exit 0
    fi
done

