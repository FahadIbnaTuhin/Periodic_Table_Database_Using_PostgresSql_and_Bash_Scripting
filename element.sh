#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
else
  INFO=$($PSQL "SELECT type_id, atomic_number, types.type, atomic_mass, melting_point_celsius, boiling_point_celsius, symbol, name FROM properties FULL JOIN elements USING(atomic_number) FULL JOIN types USING(type_id) WHERE atomic_number::text = '$1' OR symbol = '$1' OR name = '$1';")

  if [[ -z $INFO ]]; then
    echo "I could not find that element in the database."
  else
    IFS="|" read TYPE_ID ATOMIC_NUMBER TYPE ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS SYMBOL NAME <<< "$INFO"

    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
  fi
fi 