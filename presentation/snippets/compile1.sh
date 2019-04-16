#!/bin/bash

javac -d classes --module-source-path src $(find src -name "*.java")

java -p classes -m net.hontheim.jigsaw.meineapp/net.hontheim.jigsaw.meineapp.MeineApp
