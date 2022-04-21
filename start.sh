#!/bin/bash
echo "Chris Titus' Fedora Desktop"
echo "Walter Brobson, 2022"
while getopts n:nr: flag
do
    case "${flag}" in
        n) normal=${OPTARG};;
        nr) noreboot=${OPTARG};;
    esac
done

echo "Selected with flags:"
echo "Mode: $normal"
echo "No Reboot: $noreboot"
echo ""
echo "5 seconds to exit, if nessesary..."
echo ""
sleep 5

bash 1-Core-packages.sh

if $normal = "cttconf"
then
    bash 2-Configs.sh -ctt;
fi
if $normal = "yes"
then
    bash 2-Configs.sh -nctt;
fi

bash 3-Other-packages.sh
if $noreboot = "y"
then
    bash 4.1-Cleaning-up-noreboot.sh && exit;
fi
bash 4-Cleaning-up.sh