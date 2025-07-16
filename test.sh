#!/bin/sh

# usage : ./test.sh [wati-test] [interpreter]

set -e

echo "${0%/*}"

for file in "${0%/*}/"*.wast; do
	echo "testing: $file"
	"$1" "$file" 2> "$file".err
	"$2" out.wast
done

rm out.wast
