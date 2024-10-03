#!/bin/bash

EXAMPLE_DIR="examples"
WORKING_DIR="code"


if [ ! -d "$EXAMPLE_DIR" ]; then
    echo "Creating '$EXAMPLE_DIR' directory..."
    mkdir $EXAMPLE_DIR
else
    echo "'$EXAMPLE_DIR' directory already exists."
fi

if [ ! -d "$WORKING_DIR" ]; then
    echo "Creating '$WORKING_DIR' directory..."
    mkdir $WORKING_DIR
else
    echo "'$WORKING_DIR' directory already exists."
fi

echo "Setting permissions for 'example' and 'workdir'..."

chown -R :docker $EXAMPLE_DIR $WORKING_DIR
chmod -R 774 $EXAMPLE_DIR $WORKING_DIR

echo "Building and preparing Docker containers..."
docker-compose up --build --no-start
