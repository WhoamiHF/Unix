#!/bin/sh

cat "$1" | cut -d\" -f2 > pom1
cat "$2" | cut -d\" -f2 > pom2
sort -o pom1 pom1
sort -o pom2 pom2
joint -t, pom1 pom2
rm pom1
rm pom2
