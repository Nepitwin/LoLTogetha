#!/bin/bash
# Funny script for Ubuntu.

function random() {

  # capture parameter
  declare -i Random_Number=$1

  if [ ! $Random_Number -gt 0 ]; then
    # default to 4
    # chosen by fair dice roll.
    # guaranteed to be random.
    Random_Number=4
  fi

  value=$[($RANDOM % $Random_Number)]
  return $value
}

# Array with expressions
cow=("apt" "bud-frogs" "bunny" "calvin" "cheese" "cock" "cower" "daemon" "default" "dragon" "dragon-and-cow" "duck" "elephant" "elephant-in-snake" "eyes" "flaming-sheep" "ghostbusters" "gnu" "hellokitty" "kiss" "koala" "kosh" "luke-koala" "mech-and-cow" "milk" "moofasa" "moose" "pony" "pony-smaller" "ren" "sheep" "skeleton" "snowman" "stegosaurus" "stimpy" "suse" "three-eyes" "turkey" "turtle" "tux" "unipony" "unipony-smaller" "vader" "vader-koala" "www")

while (true); do
  random 3
  retval=$?
  SRANDOM=$$$(date +%s)
  if [ "$retval" == 0 ]
    then
      cowsay Chew Chew Train COMING | lolcat
      sleep 5
      sl
    elif [[ "$retval" == 1 ]]; then
      cow=${cow[$SRANDOM % ${#cow[@]} ]}
      fortune | cowsay -f $cow | lolcat
      sleep 10
    else
      nyancat -f 100
  fi
done
