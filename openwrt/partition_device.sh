#! /usr/bin/env bash

echo "Partitioning:"
echo
parted $1 print
read -p "Continue? " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
  set -o xtrace
  parted -sm /dev/sdb mklabel gpt
  parted -m $1 print
  echo
  parted -sm -a optimal /dev/sdb mkpart primary 0% 10%
  parted -sm -a optimal /dev/sdb mkpart primary 10% 30%
  parted -sm -a optimal /dev/sdb mkpart primary 30% 100%
  echo
  parted -m $1 print
else
  echo "Aborted."
fi