#!/bin/sh

default_name="000-default"
default_ssl_name="default-ssl"

dir_path="/etc/apache2/sites-available"
dirs=`find $dir_path -type f -name *.conf`

for dir in $dirs;
do
    filename=`basename $dir .conf`
    if [ $filename = $default_name ]; then
        continue
    elif [ $filename = $default_ssl_name ]; then
        continue
    else
        a2ensite $filename
    fi
done
