#!/bin/bash

PACK_DIR=package;

publish() {
    cd $PACK_DIR
    echo 'Publishing to npm...'
    npm publish --registry=https://maven.eaglescience.nl/repository/ES-NPM-Private/ *.tgz
}

./pack.sh && publish
