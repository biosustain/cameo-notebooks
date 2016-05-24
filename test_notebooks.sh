#!/bin/bash

exit_code=0

for file in *.ipynb; do
    if [ $file != "08-high-level-API.ipynb" ] ; then
        runipy $file
        if [ $? != 0 ]; then
            exit_code=$?
            echo "Encountered problem with $file"
        fi
    fi
done

exit $exit_code