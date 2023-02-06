#!/bin/bash

set -e
set -x
pwd
# where pip
INVENV=$(python -c 'import sys; print ("1" if hasattr(sys, "real_prefix") else "0")')
# cd ../../
# cd tests

# python -m pip install wheelhouse/*.whl
# python -m pytest 
# pytest $1/sklearn/tests
# pytest $1/torch/tests
pytest --pyargs pgbm.sklearn
pytest --pyargs pgbm.torch