#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
if ! [ "$DIR" ]; then
  mkdir ~/.config 
fi
pushd ~/.config
if [ -L "./pep8" ] || [ -e "./pep8" ]; then
  TIMESTAMP=`date +"%s"`
  echo "Moving pep8 to pep8.${TIMESTAMP}"
  mv pep8 pep8.${TIMESTAMP}
fi
ln -s ${DIR}/pep8 pep8
popd
