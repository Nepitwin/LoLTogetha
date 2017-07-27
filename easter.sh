#!/bin/bash
# Funny script for Ubuntu.

function random() {

  # capture parameter
  declare -i Random_Number=$1

  if [ ! $Random_Number -gt 0 ]; then
    # default to 6
    Random_Number=6
  fi

  value=$[($RANDOM % $Random_Number)]
  return $value
}

while (true); do
  random 3
  retval=$?
  if [ "$retval" == 0 ]
    then
      cowsay Chew Chew Train COMING | lolcat
      sleep 5
      sl
    elif [[ "$retval" == 1 ]]; then
      #statements
      fortune | cowsay | lolcat
      sleep 10
    else
      nyancat -f 100
  fi
done
