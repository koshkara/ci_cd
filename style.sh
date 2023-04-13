#!/bin/bash

cd src/cat
make style 2> style.txt
style_cat_output=$(cat style.txt)
echo "$style_cat_output"
if [ -n "$style_cat_output" ]
then
  exit 1
else
  cd ../grep
  make style 2> style.txt
  style_grep_output="$(cat style.txt)"
  echo "$style_grep_output"
  if [ -n "$style_grep_output" ]
  then
    exit 1
    fi
    fi
