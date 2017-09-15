#!/bin/sh

CWD=$(dirname $(realpath $0))

for D in *.jpg; 
do
  
  #FULLPATH=$(realpath ${D})  &> /dev/null
  

 
  # Echoes all commands before executing.
  set -o verbose 
    
    echo ""
    echo "IMAGEN: ${D}"
    echo ""

    guetzli --verbose ${D} ${D}.min.jpg
   


done

