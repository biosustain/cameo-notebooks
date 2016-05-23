#!/bin/bash

exit_code=0

for file in *.ipynb; do
    runipy $file
    if [ $? != 0 ]; then
        exit_code=$?
        echo "Encountered problem with $file"
    fi
done

exit $exit_code