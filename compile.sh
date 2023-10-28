#!/bin/bash

filename=$1
extra_args=$3
compiler_to_be_used=$2

if [[ "$compiler_to_be_used" == "" ]]; then
    compiler_to_be_used="clang++"
fi

filename_without_extension="${filename%.*}"

if [[ "$extra_args" != "" ]]; then
    $compiler_to_be_used -Wall -std=c++20 $filename $extra_args -o $filename_without_extension
else
    $compiler_to_be_used -Wall -std=c++20 $filename -o $filename_without_extension
fi
