#!/bin/bash

if [ "$#" -lt 1 ]; then
  param1=("update post")
else
  param1=("$1")
fi

echo ${param1}

