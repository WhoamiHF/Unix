#!/bin/sh

sort -o "$1" "$1"
sort -o "$2" "$2"
sort -o "$3" "$3"
join -t, "$1" "$2"  > pom
join -t, pom "$3"
rm pom