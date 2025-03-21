#!/bin/bash

rm unpacked/* -rf

yarn workspaces foreach --all run build

yarn run asar e packages/electron1/dist/linux-unpacked/resources/app.asar unpacked/electron1
yarn run asar e packages/electron2/dist/linux-unpacked/resources/app.asar unpacked/electron2
