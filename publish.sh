#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define the package name
PACKAGE_NAME="xlsx-to-html-extractor"

# Clean up previous builds
echo "Cleaning up old builds..."
rm -rf build dist *.egg-info

# Build the source distribution and wheel
echo "Building the package..."
python setup.py sdist bdist_wheel

# Upload the package to PyPI
echo "Uploading the package to PyPI..."
twine upload dist/*

# Clean up build files after upload
echo "Cleaning up build files..."
rm -rf build dist *.egg-info

echo "Package $PACKAGE_NAME successfully published to PyPI!"
