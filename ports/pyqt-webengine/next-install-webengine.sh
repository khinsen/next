#!/bin/sh
# Atlas Engineer - Next browser
#
# This script is for GNU/linux.
#
# Here, we:
# - download the lisp core,
# - download a pyinstaller archive of the PyQt Webengine platform port.
# It contains all Python dependencies.
# After the script, we simply have to run
# ./next
# to launch a Next window.

next_core_build="https://gitlab.com/atlas-engineer/next/-/jobs/262584477/artifacts/raw/next"
next_webengine_build="https://next.atlas.engineer/static/release/next-pyqt-webengine.tar.gz"

if [ ! -f "next-pyqt-webengine.tar.gz" ]; then
    echo "Downloading Next's Python Webengine platform port..."
    wget $next_webengine_build
else
    echo "next-pyqt-webengine.tar.gz already exists"
fi

if [ ! -d "ports" ]; then
    tar -xvf next-pyqt-webengine.tar.gz
    # Comply to a directory structure the lisp core recognizes.
    mv next-pyqt-webengine pyqt-webengine
    mkdir -p ports/pyqt-webengine
    mv pyqt-webengine/ ports/
else
    echo "the ports/ directory already exists."
fi

if [ ! -f "next" ]; then
    echo "Downloading latest Next core..."
    wget  $next_core_build && \
        chmod +x next
else
    echo "The next binary already exists."
fi

echo "You are all done, you can now run ./next and enjoy !"
