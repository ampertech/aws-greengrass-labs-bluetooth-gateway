#!/bin/bash

# Go to right dir
cd "$(dirname "$( realpath "$0" )")"
cd src

# Build the component:
gdk component build -d

# The above will create a greengrass-build and a zip-build directory with all of the 
# files need to publish the component to the AWS Core.

# Publish the component to AWS Core:
gdk component publish -d