#!/usr/bin/env python
import sys
import logging
import nbformat
from runipy.notebook_runner import NotebookRunner

logging.basicConfig(level=logging.INFO)

nb = nbformat.read(sys.argv[1], 3)
r = NotebookRunner(nb)
r.run_notebook()
try:
    output_notebook = sys.argv[2]
except IndexError:
    output_notebook = sys.argv[1]
nbformat.write(nb, output_notebook, 3)
nb = nbformat.read(output_notebook, 3)
nbformat.write(nb, output_notebook, 4)
