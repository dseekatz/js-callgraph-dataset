#!/bin/bash

# Directory to install the packages in the dataset
DATASET_DIR="./dataset"

# Array of npm package names/version
declare -a PACKAGES=(
    "makeappicon@1.2.2"
    "toucht@0.0.1"
    "spotify-terminal@0.1.2"
    "ragan-module@1.3.0" 
    "npm-git-snapshot@0.1.1"
    "nodetree@0.0.3"
    "jwtnoneify@1.0.1"
    "foxx-framework@0.3.6"
    "npmgenerate@0.0.1"
    "smrti@1.0.3"
    "writex@1.0.4"
    "openbadges-issuer@0.4.0"
)

if [ ! -d "${DATASET_DIR}" ]
then
    mkdir "${DATASET_DIR}"
fi

for PACKAGE in "${PACKAGES[@]}"
do
    npm install --prefix "${DATASET_DIR}" "${PACKAGE}"
done