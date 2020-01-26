#!/bin/sh

echo "Install project dependencies"
npm install

echo "Running eleventy"
eleventy $INPUT_ARGS
