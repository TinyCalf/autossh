#!/bin/bash

echo -e "\
    _   _   _ _____ ___  ____ ____  _   _  \n\
   / \ | | | |_   _/ _ \/ ___/ ___|| | | | \n\
  / _ \| | | | | || | | \___ \___ \| |_| | \n\
 / ___ \ |_| | | || |_| |___) |__) |  _  | \n\
/_/   \_\___/  |_| \___/|____/____/|_| |_| \n\
v1.0 tiny-calf.com\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"

while read -r -a line
do
		if [[ ${line[0]} = $1 ]]
		then
			user=${line[1]};
			host=${line[2]};
			pass=${line[3]};
			port=${line[4]};
			des=${line[5]};
    fi
done < $DIR/ssh.config

/usr/bin/expect -f ./sv_exp $user $host $pass $port $des
