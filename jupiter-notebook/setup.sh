#!/bin/bash

example_dir="examples"
workdir_dir="workdir"


if [ ! -d "$example_dir" ]; then
    echo "Creating 'example' directory..."
    mkdir $example_dir
else
    echo "'$example_dir' directory already exists."
fi

if [ ! -d "$workdir_dir" ]; then
    echo "Creating 'workdir' directory..."
    mkdir $workdir_dir
else
    echo "'$workdir_dir' directory already exists."
fi

echo "Setting permissions for 'example' and 'workdir'..."

chown -R :docker $example_dir $workdir_dir
chmod -R 774 $example_dir $workdir_dir

echo "Building and preparing Docker containers..."
docker-compose up --build --no-start --no-cache
