#!/bin/bash
flag=1
pass=kalendula73
sshpass -p "$pass" scp src/cat/s21_cat root@192.168.1.13:/usr/local/bin/ 2> cat.txt
check_cat=$(cat cat.txt)
sshpass -p "$pass" scp src/grep/s21_grep root@192.168.1.13:/usr/local/bin/ 2> grep.txt
check_grep=$(cat grep.txt)

if [ -z "$check_cat" ]
then
  if [ -z "$check_grep" ]
  then
    echo "Success copy"
    flag=0
      fi
        fi
exit "$flag"