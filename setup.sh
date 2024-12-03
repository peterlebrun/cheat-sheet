#!/bin/bash

# do not run if venv is already present
if [ -d "venv" ]; then
    echo "Setup has already been run in this directory."
    exit 0
fi

deactivate
python3.9 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt

cp sample.yaml content.yaml
