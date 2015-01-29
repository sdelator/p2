#! /bin/bash
if [[ "$#" -eq 0 ]]
then
  echo Executable name required.
  echo usage: makemake.sh executable_name
else
  echo -n "$1 :">Makefile
fi
for f in *.cpp ; do  #make .cpp
  f2=${f%.*}.o
  echo -n " $f2">>Makefile
done # for
  echo>>makefile
  echo -e '\n' '\t' "g++ -ansi -Wall -g -o"'\c'>>Makefile 
  for f in *.cpp ; do
    f2=${f%.*}.o
    echo -n " $f2" >>Makefile
  done # for
  echo>>Makefile
  #completed first 
   
  for f in *.cpp ; do
    f2=${f%.*}.o
    echo -n " $f2 :" >>Makefile
    awk '/"*.h"/ {print $2}' $f #replace $f2 with regular file
    echo $f #DELETE DELETE 
    echo
        
  done #for





# Helpful Hints
# Echo Tabs: echo -e ' \t'
# -e: enable interpret of backslash
# ' \t': tab 
