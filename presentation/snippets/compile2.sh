#!/bin/bash

javac -d classes --module-source-path src $(find src -name "*.java")

mkdir ./modules

jar --create --file modules/net.hontheim.jigsaw.meineapp-1.0.jar --module-version 1.0 --main-class net.hontheim.jigsaw.meineapp.MeineApp -C classes/net.hontheim.jigsaw.meineapp .

jar --create --file modules/net.hontheim.jigsaw.meinutil-1.0.jar --module-version 1.0 -C classes/net.hontheim.jigsaw.meinutil .

java -p modules -m net.hontheim.jigsaw.meineapp/net.hontheim.jigsaw.meineapp.MeineApp
