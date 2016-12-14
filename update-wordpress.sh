#!/bin/sh

#
# Use wordpress-cli to update core, plugins and themes in 
# all <dir>/html directories under current directory
#
 
#!/bin/sh
 
for D in *; do
  if [ -d "${D}" ]; then
    FULLPATH=$(realpath ${D}/html)  &> /dev/null
    
    if wp --allow-root --path=$FULLPATH core version &> /dev/null

    then
      echo ""
      echo "Wordpress found! at ${FULLPATH}"
      echo ""

      echo "Check core updates for: ${D}"
	  wp --allow-root --path=${FULLPATH} core update 

      echo "Check plugin updates for: ${D}"
	  wp --allow-root --path=${FULLPATH} plugin update --all

      echo "Check theme updates for: ${D}"
	  wp --allow-root --path=${FULLPATH} theme update --all

    else

      echo ""
      echo "Not wordpress at ${FULLPATH}, skipping"
      echo ""

    fi
  fi

done
