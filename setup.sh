#!/bin/bash
green='\e[01;32m' # '\e[1;32m' is too bright for white bg.
endc='\e[0m'

echo -e "\n${green}Installing a couple necessary packages (you'll need to type the cosc45 password)${endc}"
sudo apt-get install libbz2-dev whois

echo -e "\n${green}Building bgpdump tool for part 2 of this lab${endc}\n"
cd bgpdump
./configure
make
cd ..

echo -e "\n${green}Downloading data files for part 2 of this lab${endc}\n"
for f in updates.20110127.2122.bz2 updates.20110127.2222.bz2 updates.20110127.2137.bz2 updates.20110127.2237.bz2 updates.20110127.2050.bz2 updates.20110127.2152.bz2 updates.20110127.2252.bz2 updates.20110127.2105.bz2 updates.20110127.2207.bz2 updates.20110127.2307.bz2
do
    wget -Nnv http://cs.colgate.edu/~jsommers/cosc465/$f
done

echo -e "\n${green}Done!  You're ready to start on part 1 of the lab${endc}\n"
