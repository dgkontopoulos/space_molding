#!/bin/bash

if ! [ $(id -u) = 0 ]; then
  echo "You must be root to do this."
  exit 1
fi

chmod 755 ./cpanm

./cpanm Dependency/* File::Spec List::Util Math::Round

mkdir -p /usr/local/bin/

chmod 755 ./space_molding.pl
cp ./space_molding.pl /usr/local/bin/

echo -e "\033[1m\nspace_molding was successfully installed!\033[0m"
echo -e "To launch it, type 'space_molding.pl' (without quotes).\n"
