#!/bin/sh
#
# Set python 3 kernels on all notebooks in root directory.

for notebook in *.ipynb; do
    echo "Setting python 3 kernel on $notebook"
    python util/set_py3_kernel.py $notebook
done
