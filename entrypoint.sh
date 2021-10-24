#!/bin/sh

echo "Install project dependencies"
npm ci

echo "Running eleventy"
eleventy $INPUT_ARGS
