#!/bin/bash

echo "Installing a couple necessary packages"
sudo apt-get install libbz2-dev whois

echo "Building bgpdump"
cd bgpdump
./configure
make
cd ..

echo "Downloading data files for part 2 of this lab"
for f in updates.20110127.2122.bz2 updates.20110127.2222.bz2 updates.20110127.2137.bz2 updates.20110127.2237.bz2 updates.20110127.2050.bz2 updates.20110127.2152.bz2 updates.20110127.2252.bz2 updates.20110127.2105.bz2 updates.20110127.2207.bz2 updates.20110127.2307.bz2
do
    wget -nv http://cs.colgate.edu/~jsommers/cosc465/$f
done
