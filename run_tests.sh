#!/bin/bash

echo "Appending openpipe to PYTHONPATH"
source ./openpipe/source_me.bash
echo "Running Open Pipe Unit Test suite"
if [ ! -z $DEBUG ]; then
    pytest openpipe/test --cov=openpipe
else
    pytest openpipe/test --cov=openpipe --cov-report=xml
fi