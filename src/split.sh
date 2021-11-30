#!/usr/bin/env bash

# Wraps awk to reduce syntax, in particular the need to pass in a simple
# "print" program
#
# All "optional arguments" need to have default values in the logic, this
# allows arguments to be assigned in order from left to right to parameters that
# are not optional: ie: janky overloading
#
# Args:
#   1: (optional) The field delimiter. "Defaults" to space.
#   2: The column to print. Defaults to all
#
# Examples:
#   Split using default delimiter and print back the 1st column
#   ```
#   split 1
#   # or
#   split first
#   ```
#
#   Split using default delimiter and print back the last column
#   ```
#   split last
#   ```
#
#   Split using '/' as delimiter and print back the nth column
#   ```
#   split / n
#   ```

# shellcheck disable=SC2016
delim=' '
col='0'

if [[ "$#" == 2 ]]; then
  delim="$1"
  col="$2"
elif [[ "$#" == 1 ]]; then
  echo "@TODO handle magical single argument"
  col="$1"
fi

prog="{ print \$$col }"
awk -F "$delim" "$prog"
