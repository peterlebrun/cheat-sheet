#!/bin/bash

# do not run if venv is already present
if [ -d "venv" ]; then
    echo "Setup has already been run in this directory."
    exit 0
fi

python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cp sample.yaml content.yaml
