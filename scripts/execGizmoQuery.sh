#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters" >&2
    echo "Usage: execGizmoQuery <data-to-load> <query-file>" >&2
    exit 1
fi

cayley query  --logtostderr false --load $1 `cat $2`
