#!/bin/bash

FILES=$(find -name '*.h' -o -name '*.c' | grep -v "/build/" | grep -v vstdint.h)

for file in ${FILES}; do
	sed -i 's/\([^v]\)uint/\1vuint/g' ${file}
done
