#!/bin/bash
pwd=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-20};echo;)
for i in $(cat user.txt)
        do
          echo "$i:$pwd" | chpasswd | echo "$i password is $pwd $(date)" | mail -s "$i password has been changed" satadru@example.com ;
        done
exit
