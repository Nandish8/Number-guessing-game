#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"
echo "Enter your username:"
read USERNAME 
NUM_OF_G=0
UN=$($PSQL "SELECT user_name FROM ng where user_name = '$USERNAME'")
if [[ -z $UN ]]
then
  INSERT_UN=$($PSQL "INSERT INTO ng(user_name) VALUES('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  echo -e "\nGuess the secret number between 1 and 1000:"
  SEC_NUM=$($PSQL "SELECT floor(random() * (2-0+1) + 0)")
  read INPUT
  while true
  do
    if [[  ! $INPUT =~ ^[0-9]+$ ]]
    then
      NUM_OF_G=`expr $NUM_OF_G + 1`
      echo -e "\nThat is not an integer, guess again:"
      read INPUT
    else
      if [[ $SEC_NUM -gt $INPUT  ]]
      then
        NUM_OF_G=`expr $NUM_OF_G + 1`
        echo -e "\nIt's higher than that, guess again:"
        read INPUT
      elif [[ $SEC_NUM -lt $INPUT  ]]
      then
        NUM_OF_G=`expr $NUM_OF_G + 1`
        echo -e "\nIt's lower than that, guess again:"
        read INPUT
      elif [[ $INPUT == $SEC_NUM ]]
      then
        NUM_OF_G=`expr $NUM_OF_G + 1`
        echo -e "\nYou guessed it in $NUM_OF_G tries. The secret number was $SEC_NUM. Nice job!"
        USER_ID=$($PSQL "SELECT user_id FROM ng WHERE user_name = '$USERNAME'")
        INSERT_NUM_OF_G=$($PSQL "INSERT INTO gi(user_id,num_of_g) VALUES($USER_ID, $NUM_OF_G)")
        break
      fi
    fi
  done
else
  USER_ID=$($PSQL "SELECT user_id FROM ng WHERE user_name = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(num_of_g) FROM gi WHERE user_id = $USER_ID")
  NO_GAMES=$($PSQL "SELECT COUNT(GAME_ID) FROM gi WHERE user_id=$USER_ID")
  echo -e "\nWelcome back, $USERNAME! You have played $NO_GAMES games, and your best game took $BEST_GAME gueses."
  echo -e "\nGuess the secret number between 1 and 1000:"
  SEC_NUM=$($PSQL "SELECT floor(random() * (2-0+1) + 0)")
  read INPUT
  while true
  do
    if [[  ! $INPUT =~ ^[0-9]+$ ]]
    then
      NUM_OF_G=`expr $NUM_OF_G + 1`
      echo -e "\nThat is not an integer, guess again:"
      read INPUT
    else
      if [[ $SEC_NUM -gt $INPUT  ]]
      then
        NUM_OF_G=`expr $NUM_OF_G + 1`
        echo -e "\nIt's higher than that, guess again:"
        read INPUT
      elif [[ $SEC_NUM -lt $INPUT  ]]
      then
        NUM_OF_G=`expr $NUM_OF_G + 1`
        echo -e "\nIt's lower than that, guess again:"
        read INPUT
      elif [[ $INPUT == $SEC_NUM ]]
      then
        NUM_OF_G=`expr $NUM_OF_G + 1`
        echo -e "\nYou guessed it in $NUM_OF_G tries. The secret number was $SEC_NUM. Nice job!"
        USER_ID=$($PSQL "SELECT user_id FROM ng WHERE user_name = '$USERNAME'")
        INSERT_NUM_OF_G=$($PSQL "INSERT INTO gi(user_id,num_of_g) VALUES($USER_ID, $NUM_OF_G)")
        break
      fi
    fi
  done
fi
