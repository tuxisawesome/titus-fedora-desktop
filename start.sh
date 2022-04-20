#!/bin/bash
echo "Chris Titus' Fedora Desktop"
echo "Walter Brobson, 2022"

bash 1-Core-packages.sh
if [ "$2" == "-ctt"]; then
    bash 2-Configs.sh -ctt;
fi
if [ "$2" == "-norm"]; then
    bash 2-Configs.sh -nctt;
fi
bash 3-Other-packages.sh
if [ "$1" == "-n" ]; then
    bash 4.1-Cleaning-up-noreboot.sh && exit;
fi
bash 4-Cleaning-up.sh