#!/bin/bash
   echo "%&\plain"
   echo
   echo "\nopagenumbers"
   echo
   echo "\input xy"
   echo "\xyoption{frame}"
   echo "\xyoption{curve}"
   echo "\xyoption{arc}"
   echo "\input macros"
   echo "\bf"
   echo
for i in $(ls *.tex); do
   if [ "$i" = "catalog.tex" -o "$i" = "catalog2.tex" -o "$i" = "trial.tex" ]; 
     then
	echo "catalog: $i \par"
     else
	echo item: $i
   	echo "\input " $i
   	echo "\medskip"
     fi
   done
echo "\bye"

