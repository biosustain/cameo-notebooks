"""
Script that changes a jupyter notebooks' kernel config to python 3.

usage: set_py3_kernel.py notebok.ipynb
"""

import sys
import nbformat
nb = nbformat.read(sys.argv[1], 4)
nb['metadata']['kernelspec'] = {'display_name': 'Python 3', 'language': 'python', 'name': 'python3'}
nb['metadata']['language_info'] = {'codemirror_mode': {'name': 'ipython', 'version': 3},
  'file_extension': '.py',
  'mimetype': 'text/x-python',
  'name': 'python',
  'nbconvert_exporter': 'python',
  'pygments_lexer': 'ipython3',
  'version': '3.5.0'}
nbformat.write(nb, sys.argv[1])
