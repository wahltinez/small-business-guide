#!/bin/bash

# Clean and recreate build directory
rm -rf public && mkdir -p public

# Initialize the page with the header stuff
cat header.html > public/index.html

# Process the markdown files into HTML
cat *.md | python3 -m markdown >> public/index.html
