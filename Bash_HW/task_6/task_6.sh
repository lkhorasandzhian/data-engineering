#!/bin/bash

if [ -f "input.txt" ]; then
    wc -l < "input.txt" > "output.txt"
else
    ls "input.txt" 2> "error.log"
fi