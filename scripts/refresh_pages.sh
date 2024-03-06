#!/bin/bash

HUGO_HOME=$(realpath "$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/..")
for i in "$HUGO_HOME"/content/**/_index.md
do
  touch -a -m "$i"
  nvim -c "wq" "$i"
done
